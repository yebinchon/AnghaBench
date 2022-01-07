
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_object {int dummy; } ;
struct lock_list_entry {int ll_count; struct lock_instance* ll_children; struct lock_list_entry* ll_next; } ;
struct lock_instance {struct lock_object const* li_lock; } ;



__attribute__((used)) static struct lock_instance *
find_instance(struct lock_list_entry *list, const struct lock_object *lock)
{
 struct lock_list_entry *lle;
 struct lock_instance *instance;
 int i;

 for (lle = list; lle != ((void*)0); lle = lle->ll_next)
  for (i = lle->ll_count - 1; i >= 0; i--) {
   instance = &lle->ll_children[i];
   if (instance->li_lock == lock)
    return (instance);
  }
 return (((void*)0));
}
