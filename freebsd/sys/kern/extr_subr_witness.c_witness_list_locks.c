
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_list_entry {int ll_count; int * ll_children; struct lock_list_entry* ll_next; } ;


 int witness_list_lock (int *,int (*) (char const*)) ;

int
witness_list_locks(struct lock_list_entry **lock_list,
    int (*prnt)(const char *fmt, ...))
{
 struct lock_list_entry *lle;
 int i, nheld;

 nheld = 0;
 for (lle = *lock_list; lle != ((void*)0); lle = lle->ll_next)
  for (i = lle->ll_count - 1; i >= 0; i--) {
   witness_list_lock(&lle->ll_children[i], prnt);
   nheld++;
  }
 return (nheld);
}
