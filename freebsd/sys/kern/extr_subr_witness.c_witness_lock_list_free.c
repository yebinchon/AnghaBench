
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_list_entry {struct lock_list_entry* ll_next; } ;


 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 struct lock_list_entry* w_lock_list_free ;
 int w_mtx ;

__attribute__((used)) static void
witness_lock_list_free(struct lock_list_entry *lle)
{

 mtx_lock_spin(&w_mtx);
 lle->ll_next = w_lock_list_free;
 w_lock_list_free = lle;
 mtx_unlock_spin(&w_mtx);
}
