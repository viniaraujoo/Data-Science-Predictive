
novo <- train %>% filter(situacao == "nao_eleito") %>% mutate(bin = 0)
novo1 <- train %>% filter(situacao == "eleito") %>% mutate(bin = 1)
final <- full_join(novo,novo1)

novo <- test %>% filter(situacao == "nao_eleito") %>% mutate(bin = 0)
novo1 <- test %>% filter(situacao == "eleito") %>% mutate(bin = 1)
finalteste <- full_join(novo,novo1)