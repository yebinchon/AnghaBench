
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct trapframe {int tf_scause; int tf_stval; int tf_sepc; } ;


 int CTR3 (int ,char*,int ,int ,struct trapframe*) ;





 int EXCP_INTR ;

 int EXCP_MASK ;

 int KASSERT (int,char*) ;
 int KTR_TRAP ;
 int SSTATUS_SIE ;
 int SSTATUS_SPP ;
 int curthread ;
 int data_abort (struct trapframe*,int ) ;
 int dtrace_invop_jump_addr (struct trapframe*) ;
 scalar_t__ dtrace_trap_func (struct trapframe*,int) ;
 int dump_regs (struct trapframe*) ;
 int kdb_trap (int,int ,struct trapframe*) ;
 int panic (char*,...) ;
 int riscv_cpu_intr (struct trapframe*) ;
 scalar_t__ stub1 (struct trapframe*,int) ;

void
do_trap_supervisor(struct trapframe *frame)
{
 uint64_t exception;
 uint64_t sstatus;


 __asm __volatile("csrr %0, sstatus" : "=&r" (sstatus));
 KASSERT((sstatus & (SSTATUS_SPP | SSTATUS_SIE)) == SSTATUS_SPP,
   ("We must came from S mode with interrupts disabled"));

 exception = (frame->tf_scause & EXCP_MASK);
 if (frame->tf_scause & EXCP_INTR) {

  riscv_cpu_intr(frame);
  return;
 }






 CTR3(KTR_TRAP, "do_trap_supervisor: curthread: %p, sepc: %lx, frame: %p",
     curthread, frame->tf_sepc, frame);

 switch(exception) {
 case 132:
 case 131:
 case 133:
 case 128:
 case 129:
  data_abort(frame, 0);
  break;
 case 134:
  dump_regs(frame);
  panic("No debugger in kernel.\n");

  break;
 case 130:
  dump_regs(frame);
  panic("Illegal instruction at 0x%016lx\n", frame->tf_sepc);
  break;
 default:
  dump_regs(frame);
  panic("Unknown kernel exception %x trap value %lx\n",
      exception, frame->tf_stval);
 }
}
