
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_store_data {scalar_t__ value_regex; int do_not_match; int key; } ;


 scalar_t__ CONFIG_REGEX_NONE ;
 int regexec (scalar_t__,char const*,int ,int *,int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int matches(const char *key, const char *value,
     const struct config_store_data *store)
{
 if (strcmp(key, store->key))
  return 0;
 if (!store->value_regex)
  return 1;
 if (store->value_regex == CONFIG_REGEX_NONE)
  return 0;

 return store->do_not_match ^
  (value && !regexec(store->value_regex, value, 0, ((void*)0), 0));
}
