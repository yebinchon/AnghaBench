
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_store_data {int * seen; int * parsed; int * value_regex; int * key; } ;


 int * CONFIG_REGEX_NONE ;
 int free (int *) ;
 int memset (struct config_store_data*,int ,int) ;
 int regfree (int *) ;

__attribute__((used)) static void config_store_data_clear(struct config_store_data *store)
{
 free(store->key);
 if (store->value_regex != ((void*)0) &&
     store->value_regex != CONFIG_REGEX_NONE) {
  regfree(store->value_regex);
  free(store->value_regex);
 }
 free(store->parsed);
 free(store->seen);
 memset(store, 0, sizeof(*store));
}
