
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t ss_size; int ss_flags; scalar_t__ ss_sp; } ;
struct thread {int td_pflags; TYPE_1__ td_sigstk; int td_proc; } ;


 int SS_ONSTACK ;
 int SV_AOUT ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;
 int TDP_ALTSTACK ;
 struct thread* curthread ;

int
sigonstack(size_t sp)
{
 struct thread *td;

 td = curthread;
 if ((td->td_pflags & TDP_ALTSTACK) == 0)
  return (0);




 return (sp >= (size_t)td->td_sigstk.ss_sp &&
     sp < td->td_sigstk.ss_size + (size_t)td->td_sigstk.ss_sp);
}
