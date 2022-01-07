
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blockif_sig_elem {int bse_mtx; int bse_cond; scalar_t__ bse_pending; scalar_t__ bse_next; } ;
typedef enum ev_type { ____Placeholder_ev_type } ev_type ;


 int atomic_cmpset_ptr (uintptr_t*,uintptr_t,uintptr_t) ;
 struct blockif_sig_elem* blockif_bse_head ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
blockif_sigcont_handler(int signal, enum ev_type type, void *arg)
{
 struct blockif_sig_elem *bse;

 for (;;) {




  do {
   bse = blockif_bse_head;
   if (bse == ((void*)0))
    return;
  } while (!atomic_cmpset_ptr((uintptr_t *)&blockif_bse_head,
         (uintptr_t)bse,
         (uintptr_t)bse->bse_next));

  pthread_mutex_lock(&bse->bse_mtx);
  bse->bse_pending = 0;
  pthread_cond_signal(&bse->bse_cond);
  pthread_mutex_unlock(&bse->bse_mtx);
 }
}
