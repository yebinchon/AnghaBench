
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct kaioinfo* p_aioinfo; } ;
struct kaioinfo {scalar_t__ kaio_active_count; } ;
struct aioproc {int aioproc; int aioprocflags; } ;


 int AIOP_FREE ;
 int MA_OWNED ;
 struct aioproc* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct aioproc*,int ) ;
 int aio_freeproc ;
 int aio_job_mtx ;
 int aio_newproc (scalar_t__*) ;
 int list ;
 scalar_t__ max_aio_per_proc ;
 scalar_t__ max_aio_procs ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ num_aio_procs ;
 scalar_t__ num_aio_resv_start ;
 int wakeup (int ) ;

__attribute__((used)) static int
aio_kick(struct proc *userp)
{
 struct kaioinfo *ki = userp->p_aioinfo;
 struct aioproc *aiop;
 int error, ret = 0;

 mtx_assert(&aio_job_mtx, MA_OWNED);
retryproc:
 if ((aiop = TAILQ_FIRST(&aio_freeproc)) != ((void*)0)) {
  TAILQ_REMOVE(&aio_freeproc, aiop, list);
  aiop->aioprocflags &= ~AIOP_FREE;
  wakeup(aiop->aioproc);
 } else if (num_aio_resv_start + num_aio_procs < max_aio_procs &&
     ki->kaio_active_count + num_aio_resv_start < max_aio_per_proc) {
  num_aio_resv_start++;
  mtx_unlock(&aio_job_mtx);
  error = aio_newproc(&num_aio_resv_start);
  mtx_lock(&aio_job_mtx);
  if (error) {
   num_aio_resv_start--;
   goto retryproc;
  }
 } else {
  ret = -1;
 }
 return (ret);
}
