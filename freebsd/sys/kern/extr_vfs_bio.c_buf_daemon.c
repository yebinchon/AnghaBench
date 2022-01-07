
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bufdomain {int bd_numdirtybuffers; int bd_lodirtybuffers; } ;
struct TYPE_3__ {int td_pflags; } ;


 int BIT_EMPTY (int ,int *) ;
 int BUF_DOMAINS ;
 int EVENTHANDLER_REGISTER (int ,int ,TYPE_1__*,scalar_t__) ;
 int PRI_USER ;
 int PVM ;
 scalar_t__ SHUTDOWN_PRI_LAST ;
 int TDP_BUFNEED ;
 int TDP_NORUNNINGBUF ;
 scalar_t__ bd_request ;
 int bd_speedupreq ;
 int bdirtywakeup () ;
 int bdlock ;
 int bdlodirty ;
 struct bufdomain* bdomain ;
 int buf_domains ;
 scalar_t__ buf_flush (int *,struct bufdomain*,int) ;
 scalar_t__ bufspace_daemon ;
 int curproc ;
 TYPE_1__* curthread ;
 int hz ;
 int kern_yield (int ) ;
 int kthread_add (void (*) (void*),struct bufdomain*,int ,int *,int ,int ,char*,int) ;
 int kthread_shutdown ;
 int kthread_suspend_check () ;
 scalar_t__ lorunningspace ;
 int msleep (scalar_t__*,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,int) ;
 scalar_t__ runningbufspace ;
 int runningwakeup () ;
 int shutdown_pre_sync ;

__attribute__((used)) static void
buf_daemon()
{
 struct bufdomain *bd;
 int speedupreq;
 int lodirty;
 int i;




 EVENTHANDLER_REGISTER(shutdown_pre_sync, kthread_shutdown, curthread,
     SHUTDOWN_PRI_LAST + 100);




 for (i = 0 ; i < buf_domains; i++) {
  int error;

  error = kthread_add((void (*)(void *))bufspace_daemon,
      &bdomain[i], curproc, ((void*)0), 0, 0, "bufspacedaemon-%d", i);
  if (error)
   panic("error %d spawning bufspace daemon", error);
 }




 curthread->td_pflags |= TDP_NORUNNINGBUF | TDP_BUFNEED;
 mtx_lock(&bdlock);
 for (;;) {
  bd_request = 0;
  mtx_unlock(&bdlock);

  kthread_suspend_check();





  speedupreq = bd_speedupreq;
  bd_speedupreq = 0;





  for (i = 0; i < buf_domains; i++) {
   bd = &bdomain[i];
   if (speedupreq)
    lodirty = bd->bd_numdirtybuffers / 2;
   else
    lodirty = bd->bd_lodirtybuffers;
   while (bd->bd_numdirtybuffers > lodirty) {
    if (buf_flush(((void*)0), bd,
        bd->bd_numdirtybuffers - lodirty) == 0)
     break;
    kern_yield(PRI_USER);
   }
  }
  mtx_lock(&bdlock);
  if (!BIT_EMPTY(BUF_DOMAINS, &bdlodirty)) {





   bd_request = 0;





   bdirtywakeup();
   if (runningbufspace <= lorunningspace)
    runningwakeup();
   msleep(&bd_request, &bdlock, PVM, "psleep", hz);
  } else {





   msleep(&bd_request, &bdlock, PVM, "qsleep", hz / 10);
  }
 }
}
