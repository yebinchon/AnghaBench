
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_store_data {int key_seen; int seen_nr; scalar_t__ multi_replace; int section_seen; int parsed_nr; int * seen; int seen_alloc; scalar_t__ is_keys_section; } ;


 int ALLOC_GROW (int *,int,int ) ;
 int _ (char*) ;
 scalar_t__ matches (char const*,char const*,struct config_store_data*) ;
 int warning (int ,char const*) ;

__attribute__((used)) static int store_aux(const char *key, const char *value, void *cb)
{
 struct config_store_data *store = cb;

 if (store->key_seen) {
  if (matches(key, value, store)) {
   if (store->seen_nr == 1 && store->multi_replace == 0) {
    warning(_("%s has multiple values"), key);
   }

   ALLOC_GROW(store->seen, store->seen_nr + 1,
       store->seen_alloc);

   store->seen[store->seen_nr] = store->parsed_nr;
   store->seen_nr++;
  }
 } else if (store->is_keys_section) {




  ALLOC_GROW(store->seen, store->seen_nr + 1, store->seen_alloc);
  store->seen[store->seen_nr] = store->parsed_nr;
  store->section_seen = 1;

  if (matches(key, value, store)) {
   store->seen_nr++;
   store->key_seen = 1;
  }
 }

 return 0;
}
