
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_2__* td_frame; int td_proc; TYPE_1__* td_pcb; int * td_retval; } ;
struct TYPE_4__ {int tf_tnpc; int tf_tstate; int * tf_out; int tf_tpc; } ;
struct TYPE_3__ {int pcb_tpc; } ;




 int SV_ABI_ERRNO (int ,int) ;
 int TSTATE_XCC_C ;

void
cpu_set_syscall_retval(struct thread *td, int error)
{

 switch (error) {
 case 0:
  td->td_frame->tf_out[0] = td->td_retval[0];
  td->td_frame->tf_out[1] = td->td_retval[1];
  td->td_frame->tf_tstate &= ~TSTATE_XCC_C;
  break;

 case 128:




  td->td_frame->tf_tpc = td->td_pcb->pcb_tpc;
  td->td_frame->tf_tnpc -= 4;
  break;

 case 129:
  break;

 default:
  td->td_frame->tf_out[0] = SV_ABI_ERRNO(td->td_proc, error);
  td->td_frame->tf_tstate |= TSTATE_XCC_C;
  break;
 }
}
