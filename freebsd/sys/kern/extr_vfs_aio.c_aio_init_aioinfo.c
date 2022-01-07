
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int kaio_mtx; struct proc* p_aioinfo; int kaio_sync_task; int kaio_task; int kaio_syncready; int kaio_syncqueue; int kaio_liojoblist; int kaio_jobqueue; int kaio_done; int kaio_all; scalar_t__ kaio_buffer_count; scalar_t__ kaio_count; scalar_t__ kaio_active_count; scalar_t__ kaio_flags; } ;
struct kaioinfo {int kaio_mtx; struct kaioinfo* p_aioinfo; int kaio_sync_task; int kaio_task; int kaio_syncready; int kaio_syncqueue; int kaio_liojoblist; int kaio_jobqueue; int kaio_done; int kaio_all; scalar_t__ kaio_buffer_count; scalar_t__ kaio_count; scalar_t__ kaio_active_count; scalar_t__ kaio_flags; } ;


 scalar_t__ MIN (int ,int ) ;
 int MTX_DEF ;
 int MTX_NEW ;
 int M_WAITOK ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int TAILQ_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,struct proc*) ;
 int aio_kick_helper ;
 int aio_newproc (int *) ;
 int aio_schedule_fsync ;
 int kaio_zone ;
 int max_aio_procs ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int) ;
 scalar_t__ num_aio_procs ;
 int target_aio_procs ;
 struct proc* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct proc*) ;

void
aio_init_aioinfo(struct proc *p)
{
 struct kaioinfo *ki;

 ki = uma_zalloc(kaio_zone, M_WAITOK);
 mtx_init(&ki->kaio_mtx, "aiomtx", ((void*)0), MTX_DEF | MTX_NEW);
 ki->kaio_flags = 0;
 ki->kaio_active_count = 0;
 ki->kaio_count = 0;
 ki->kaio_buffer_count = 0;
 TAILQ_INIT(&ki->kaio_all);
 TAILQ_INIT(&ki->kaio_done);
 TAILQ_INIT(&ki->kaio_jobqueue);
 TAILQ_INIT(&ki->kaio_liojoblist);
 TAILQ_INIT(&ki->kaio_syncqueue);
 TAILQ_INIT(&ki->kaio_syncready);
 TASK_INIT(&ki->kaio_task, 0, aio_kick_helper, p);
 TASK_INIT(&ki->kaio_sync_task, 0, aio_schedule_fsync, ki);
 PROC_LOCK(p);
 if (p->p_aioinfo == ((void*)0)) {
  p->p_aioinfo = ki;
  PROC_UNLOCK(p);
 } else {
  PROC_UNLOCK(p);
  mtx_destroy(&ki->kaio_mtx);
  uma_zfree(kaio_zone, ki);
 }

 while (num_aio_procs < MIN(target_aio_procs, max_aio_procs))
  aio_newproc(((void*)0));
}
