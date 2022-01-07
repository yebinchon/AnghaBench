
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_waiting_lock {int dummy; } ;


 int M_NLM ;
 int TAILQ_REMOVE (int *,struct nlm_waiting_lock*,int ) ;
 int free (struct nlm_waiting_lock*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nlm_global_lock ;
 int nlm_waiting_locks ;
 int nw_link ;

void
nlm_deregister_wait_lock(void *handle)
{
 struct nlm_waiting_lock *nw = handle;

 mtx_lock(&nlm_global_lock);
 TAILQ_REMOVE(&nlm_waiting_locks, nw, nw_link);
 mtx_unlock(&nlm_global_lock);

 free(nw, M_NLM);
}
