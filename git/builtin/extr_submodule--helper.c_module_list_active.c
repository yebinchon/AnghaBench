
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_list {int nr; struct cache_entry const** entries; int alloc; } ;
typedef struct cache_entry {int name; } const cache_entry ;


 int ALLOC_GROW (struct cache_entry const**,int,int ) ;
 struct module_list MODULE_LIST_INIT ;
 int free (struct cache_entry const**) ;
 int is_submodule_active (int ,int ) ;
 int the_repository ;

__attribute__((used)) static void module_list_active(struct module_list *list)
{
 int i;
 struct module_list active_modules = MODULE_LIST_INIT;

 for (i = 0; i < list->nr; i++) {
  const struct cache_entry *ce = list->entries[i];

  if (!is_submodule_active(the_repository, ce->name))
   continue;

  ALLOC_GROW(active_modules.entries,
      active_modules.nr + 1,
      active_modules.alloc);
  active_modules.entries[active_modules.nr++] = ce;
 }

 free(list->entries);
 *list = active_modules;
}
