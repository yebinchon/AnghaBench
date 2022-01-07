
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trapframe {int tf_fprs; int tf_y; int tf_tstate; int tf_tpc; int tf_tnpc; int tf_gsr; int tf_fsr; int * tf_out; int * tf_global; } ;
struct thread {struct pcb* td_pcb; struct trapframe* td_frame; } ;
struct pcb {int pcb_flags; int pcb_ufp; } ;
struct TYPE_3__ {long _mc_flags; int _mc_fprs; int mc_fp; int _mc_y; int _mc_tstate; int _mc_tpc; int _mc_tnpc; int _mc_gsr; int _mc_fsr; int * mc_out; int * mc_global; } ;
typedef TYPE_1__ mcontext_t ;


 int EINVAL ;
 int FPRS_FEF ;
 int PCB_FEF ;
 int TSTATE_SECURE (int ) ;
 long _MC_VERSION ;
 long _MC_VERSION_BITS ;
 int bcopy (int ,int ,int) ;
 int flushw () ;

int
set_mcontext(struct thread *td, mcontext_t *mc)
{
 struct trapframe *tf;
 struct pcb *pcb;

 if (!TSTATE_SECURE(mc->_mc_tstate) ||
     (mc->_mc_flags & ((1L << _MC_VERSION_BITS) - 1)) != _MC_VERSION)
  return (EINVAL);
 tf = td->td_frame;
 pcb = td->td_pcb;

 flushw();






 tf->tf_global[1] = mc->mc_global[1];
 tf->tf_global[2] = mc->mc_global[2];
 tf->tf_global[3] = mc->mc_global[3];
 tf->tf_global[4] = mc->mc_global[4];
 tf->tf_global[5] = mc->mc_global[5];
 tf->tf_global[6] = mc->mc_global[6];
 tf->tf_out[0] = mc->mc_out[0];
 tf->tf_out[1] = mc->mc_out[1];
 tf->tf_out[2] = mc->mc_out[2];
 tf->tf_out[3] = mc->mc_out[3];
 tf->tf_out[4] = mc->mc_out[4];
 tf->tf_out[5] = mc->mc_out[5];
 tf->tf_out[6] = mc->mc_out[6];
 tf->tf_out[7] = mc->mc_out[7];
 tf->tf_fprs = mc->_mc_fprs;
 tf->tf_fsr = mc->_mc_fsr;
 tf->tf_gsr = mc->_mc_gsr;
 tf->tf_tnpc = mc->_mc_tnpc;
 tf->tf_tpc = mc->_mc_tpc;
 tf->tf_tstate = mc->_mc_tstate;
 tf->tf_y = mc->_mc_y;
 if ((mc->_mc_fprs & FPRS_FEF) != 0) {
  tf->tf_fprs = 0;
  bcopy(mc->mc_fp, pcb->pcb_ufp, sizeof(pcb->pcb_ufp));
  pcb->pcb_flags |= PCB_FEF;
 }
 return (0);
}
