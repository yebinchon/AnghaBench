
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_pcb; TYPE_1__* td_proc; } ;
struct TYPE_2__ {int p_pid; } ;


 struct thread* PCPU_GET (int ) ;
 scalar_t__ __predict_false (int) ;
 int critical_enter () ;
 int critical_exit () ;
 struct thread* curthread ;
 int fpcurthread ;
 int hw_float ;
 int panic (char*) ;
 int printf (char*,struct thread*,int,struct thread*,int) ;
 int restore_npx_curthread (struct thread*,int ) ;
 int stop_emulating () ;

int
npxdna(void)
{
 struct thread *td;

 if (!hw_float)
  return (0);
 td = curthread;
 critical_enter();
 if (__predict_false(PCPU_GET(fpcurthread) == td)) {






  stop_emulating();
 } else {
  if (__predict_false(PCPU_GET(fpcurthread) != ((void*)0))) {
   printf(
      "npxdna: fpcurthread = %p (%d), curthread = %p (%d)\n",
       PCPU_GET(fpcurthread),
       PCPU_GET(fpcurthread)->td_proc->p_pid,
       td, td->td_proc->p_pid);
   panic("npxdna");
  }
  restore_npx_curthread(td, td->td_pcb);
 }
 critical_exit();
 return (1);
}
