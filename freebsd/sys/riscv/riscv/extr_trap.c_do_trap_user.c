
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct trapframe {int tf_scause; int tf_sepc; int tf_stval; int tf_sstatus; } ;
struct thread {struct pcb* td_pcb; struct trapframe* td_frame; } ;
struct pcb {int pcb_fpflags; } ;


 int CTR3 (int ,char*,struct thread*,int,struct trapframe*) ;






 int EXCP_INTR ;

 int EXCP_MASK ;


 int ILL_ILLTRP ;
 int KASSERT (int,char*) ;
 int KTR_TRAP ;
 int PCB_FP_STARTED ;
 int SIGILL ;
 int SIGTRAP ;
 int SSTATUS_FS_CLEAN ;
 int SSTATUS_FS_MASK ;
 int SSTATUS_SIE ;
 int SSTATUS_SPP ;
 int TRAP_BRKPT ;
 int call_trapsignal (struct thread*,int ,int ,void*) ;
 struct thread* curthread ;
 int data_abort (struct trapframe*,int) ;
 int dump_regs (struct trapframe*) ;
 int fpe_state_clear () ;
 int panic (char*,int,int ) ;
 int riscv_cpu_intr (struct trapframe*) ;
 int svc_handler (struct trapframe*) ;
 int userret (struct thread*,struct trapframe*) ;

void
do_trap_user(struct trapframe *frame)
{
 uint64_t exception;
 struct thread *td;
 uint64_t sstatus;
 struct pcb *pcb;

 td = curthread;
 td->td_frame = frame;
 pcb = td->td_pcb;


 __asm __volatile("csrr %0, sstatus" : "=&r" (sstatus));
 KASSERT((sstatus & (SSTATUS_SPP | SSTATUS_SIE)) == 0,
   ("We must came from U mode with interrupts disabled"));

 exception = (frame->tf_scause & EXCP_MASK);
 if (frame->tf_scause & EXCP_INTR) {

  riscv_cpu_intr(frame);
  return;
 }

 CTR3(KTR_TRAP, "do_trap_user: curthread: %p, sepc: %lx, frame: %p",
     curthread, frame->tf_sepc, frame);

 switch(exception) {
 case 134:
 case 133:
 case 135:
 case 129:
 case 130:
 case 131:
  data_abort(frame, 1);
  break;
 case 128:
  frame->tf_sepc += 4;
  svc_handler(frame);
  break;
 case 132:
  call_trapsignal(td, SIGILL, ILL_ILLTRP, (void *)frame->tf_sepc);
  userret(td, frame);
  break;
 case 136:
  call_trapsignal(td, SIGTRAP, TRAP_BRKPT, (void *)frame->tf_sepc);
  userret(td, frame);
  break;
 default:
  dump_regs(frame);
  panic("Unknown userland exception %x, trap value %lx\n",
      exception, frame->tf_stval);
 }
}
