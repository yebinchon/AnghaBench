
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct lock_list_entry* td_sleeplocks; } ;
struct lock_list_entry {int ll_count; int * ll_children; struct lock_list_entry* ll_next; } ;


 int kassert_panic (char*,struct thread*) ;
 int * panicstr ;
 int witness_list_lock (int *,int (*) (char*,struct thread*)) ;
 int witness_lock_list_free (struct lock_list_entry*) ;
 int witness_output (char*,struct thread*) ;

void
witness_thread_exit(struct thread *td)
{
 struct lock_list_entry *lle;
 int i, n;

 lle = td->td_sleeplocks;
 if (lle == ((void*)0) || panicstr != ((void*)0))
  return;
 if (lle->ll_count != 0) {
  for (n = 0; lle != ((void*)0); lle = lle->ll_next)
   for (i = lle->ll_count - 1; i >= 0; i--) {
    if (n == 0)
     witness_output(
      "Thread %p exiting with the following locks held:\n", td);
    n++;
    witness_list_lock(&lle->ll_children[i],
        witness_output);

   }
  kassert_panic(
      "Thread %p cannot exit while holding sleeplocks\n", td);
 }
 witness_lock_list_free(lle);
}
