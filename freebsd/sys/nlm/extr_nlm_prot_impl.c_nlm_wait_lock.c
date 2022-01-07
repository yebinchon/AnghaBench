
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_waiting_lock {scalar_t__ nw_waiting; } ;


 int EINTR ;
 int M_NLM ;
 int PCATCH ;
 int SIGDEFERSTOP_ERESTART ;
 int TAILQ_REMOVE (int *,struct nlm_waiting_lock*,int ) ;
 int free (struct nlm_waiting_lock*,int ) ;
 int msleep (struct nlm_waiting_lock*,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nlm_global_lock ;
 int nlm_waiting_locks ;
 int nw_link ;
 int sigallowstop (int) ;
 int sigdeferstop (int ) ;

int
nlm_wait_lock(void *handle, int timo)
{
 struct nlm_waiting_lock *nw = handle;
 int error, stops_deferred;





 mtx_lock(&nlm_global_lock);
 error = 0;
 if (nw->nw_waiting) {
  stops_deferred = sigdeferstop(SIGDEFERSTOP_ERESTART);
  error = msleep(nw, &nlm_global_lock, PCATCH, "nlmlock", timo);
  sigallowstop(stops_deferred);
 }
 TAILQ_REMOVE(&nlm_waiting_locks, nw, nw_link);
 if (error) {





  if (!nw->nw_waiting)
   error = 0;
 } else {





  if (nw->nw_waiting)
   error = EINTR;
 }
 mtx_unlock(&nlm_global_lock);

 free(nw, M_NLM);

 return (error);
}
