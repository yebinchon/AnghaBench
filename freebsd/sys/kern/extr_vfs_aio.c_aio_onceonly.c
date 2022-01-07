
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kaioinfo {int dummy; } ;
struct kaiocb {int dummy; } ;
struct aioproc {int dummy; } ;
struct aioliojob {int dummy; } ;


 int AIOD_LIFETIME_DEFAULT ;
 int CTL_P1003_1B_AIO_MAX ;
 int CTL_P1003_1B_AIO_PRIO_DELTA_MAX ;
 int CTL_P1003_1B_ASYNCHRONOUS_IO ;
 int EVENTHANDLER_PRI_ANY ;
 void* EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int EVFILT_AIO ;
 int EVFILT_LIO ;
 int INT_MAX ;
 int MAX_AIO_QUEUE ;
 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int UMA_ALIGN_PTR ;
 int UMA_ZONE_NOFREE ;
 int _POSIX_ASYNCHRONOUS_IO ;
 int aio_filtops ;
 int aio_freeproc ;
 int aio_job_mtx ;
 int aio_jobs ;
 int aio_newproc_sem ;
 int aio_proc_rundown ;
 int aio_proc_rundown_exec ;
 void* aiocb_zone ;
 int aiod_lifetime ;
 int aiod_unr ;
 void* aiolio_zone ;
 void* aiop_zone ;
 void* exec_tag ;
 void* exit_tag ;
 int jobrefid ;
 void* kaio_zone ;
 int kqueue_add_filteropts (int ,int *) ;
 int lio_filtops ;
 int mtx_init (int *,char*,int *,int ) ;
 int new_unrhdr (int,int ,int *) ;
 int p31b_setcfg (int ,int ) ;
 int process_exec ;
 int process_exit ;
 int sema_init (int *,int ,char*) ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static int
aio_onceonly(void)
{

 exit_tag = EVENTHANDLER_REGISTER(process_exit, aio_proc_rundown, ((void*)0),
     EVENTHANDLER_PRI_ANY);
 exec_tag = EVENTHANDLER_REGISTER(process_exec, aio_proc_rundown_exec,
     ((void*)0), EVENTHANDLER_PRI_ANY);
 kqueue_add_filteropts(EVFILT_AIO, &aio_filtops);
 kqueue_add_filteropts(EVFILT_LIO, &lio_filtops);
 TAILQ_INIT(&aio_freeproc);
 sema_init(&aio_newproc_sem, 0, "aio_new_proc");
 mtx_init(&aio_job_mtx, "aio_job", ((void*)0), MTX_DEF);
 TAILQ_INIT(&aio_jobs);
 aiod_unr = new_unrhdr(1, INT_MAX, ((void*)0));
 kaio_zone = uma_zcreate("AIO", sizeof(struct kaioinfo), ((void*)0), ((void*)0),
     ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
 aiop_zone = uma_zcreate("AIOP", sizeof(struct aioproc), ((void*)0),
     ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
 aiocb_zone = uma_zcreate("AIOCB", sizeof(struct kaiocb), ((void*)0), ((void*)0),
     ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
 aiolio_zone = uma_zcreate("AIOLIO", sizeof(struct aioliojob), ((void*)0),
     ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
 aiod_lifetime = AIOD_LIFETIME_DEFAULT;
 jobrefid = 1;
 p31b_setcfg(CTL_P1003_1B_ASYNCHRONOUS_IO, _POSIX_ASYNCHRONOUS_IO);
 p31b_setcfg(CTL_P1003_1B_AIO_MAX, MAX_AIO_QUEUE);
 p31b_setcfg(CTL_P1003_1B_AIO_PRIO_DELTA_MAX, 0);

 return (0);
}
