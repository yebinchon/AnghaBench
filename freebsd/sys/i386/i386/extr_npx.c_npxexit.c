
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct thread {TYPE_1__* td_proc; } ;
struct TYPE_4__ {int pcb_save; } ;
struct TYPE_3__ {int p_comm; int p_pid; } ;


 int GET_FPU_CW (struct thread*) ;
 int GET_FPU_SW (struct thread*) ;
 int LOG_ERR ;
 scalar_t__ PCPU_GET (int ) ;
 int PCPU_SET (int ,int *) ;
 int critical_enter () ;
 int critical_exit () ;
 TYPE_2__* curpcb ;
 scalar_t__ curthread ;
 int fpcurthread ;
 int fpusave (int ) ;
 scalar_t__ hw_float ;
 int log (int ,char*,int ,int ,int) ;
 int start_emulating () ;
 int stop_emulating () ;

void
npxexit(struct thread *td)
{

 critical_enter();
 if (curthread == PCPU_GET(fpcurthread)) {
  stop_emulating();
  fpusave(curpcb->pcb_save);
  start_emulating();
  PCPU_SET(fpcurthread, ((void*)0));
 }
 critical_exit();
}
