
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct kaioinfo* p_aioinfo; } ;
struct kaioinfo {scalar_t__ kaio_active_count; int kaio_task; } ;
struct aioproc {int aioproc; int aioprocflags; } ;


 int AIOP_FREE ;
 int MA_OWNED ;
 struct aioproc* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct aioproc*,int ) ;
 int aio_freeproc ;
 int aio_job_mtx ;
 int list ;
 scalar_t__ max_aio_per_proc ;
 scalar_t__ max_aio_procs ;
 int mtx_assert (int *,int ) ;
 scalar_t__ num_aio_procs ;
 scalar_t__ num_aio_resv_start ;
 int taskqueue_aiod_kick ;
 int taskqueue_enqueue (int ,int *) ;
 int wakeup (int ) ;

__attribute__((used)) static void
aio_kick_nowait(struct proc *userp)
{
 struct kaioinfo *ki = userp->p_aioinfo;
 struct aioproc *aiop;

 mtx_assert(&aio_job_mtx, MA_OWNED);
 if ((aiop = TAILQ_FIRST(&aio_freeproc)) != ((void*)0)) {
  TAILQ_REMOVE(&aio_freeproc, aiop, list);
  aiop->aioprocflags &= ~AIOP_FREE;
  wakeup(aiop->aioproc);
 } else if (num_aio_resv_start + num_aio_procs < max_aio_procs &&
     ki->kaio_active_count + num_aio_resv_start < max_aio_per_proc) {
  taskqueue_enqueue(taskqueue_aiod_kick, &ki->kaio_task);
 }
}
