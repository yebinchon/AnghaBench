
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_list {int nr; int * entries; } ;
typedef int (* each_submodule_fn ) (int ,void*) ;



__attribute__((used)) static void for_each_listed_submodule(const struct module_list *list,
          each_submodule_fn fn, void *cb_data)
{
 int i;
 for (i = 0; i < list->nr; i++)
  fn(list->entries[i], cb_data);
}
