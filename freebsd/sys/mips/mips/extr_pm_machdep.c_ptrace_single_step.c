
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {uintptr_t pc; int cause; int fsr; } ;
struct TYPE_2__ {uintptr_t md_ss_addr; int md_ss_instr; } ;
struct thread {TYPE_1__ td_md; int td_tid; struct proc* td_proc; struct trapframe* td_frame; } ;
struct proc {char* p_comm; int p_pid; } ;
typedef uintptr_t off_t ;


 int CTR3 (int ,char*,int ,uintptr_t,int) ;
 int EFAULT ;
 int KTR_PTRACE ;
 int MIPS_BREAK_SSTEP ;
 int MIPS_CR_BR_DELAY ;
 uintptr_t MipsEmulateBranch (struct trapframe*,uintptr_t,int ,uintptr_t) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int printf (char*,char*,int,void*,void*) ;
 int ptrace_read_int (struct thread*,uintptr_t,int*) ;
 int ptrace_write_int (struct thread*,uintptr_t,int) ;

int
ptrace_single_step(struct thread *td)
{
 uintptr_t va;
 struct trapframe *locr0 = td->td_frame;
 int error;
 int bpinstr = MIPS_BREAK_SSTEP;
 int curinstr;
 struct proc *p;

 p = td->td_proc;
 PROC_UNLOCK(p);



 error = ptrace_read_int(td, locr0->pc, &curinstr);
 if (error)
  goto out;

 CTR3(KTR_PTRACE,
     "ptrace_single_step: tid %d, current instr at %#lx: %#08x",
     td->td_tid, locr0->pc, curinstr);


 if (locr0->cause & MIPS_CR_BR_DELAY) {
  va = MipsEmulateBranch(locr0, locr0->pc, locr0->fsr,
      (uintptr_t)&curinstr);
 } else {
  va = locr0->pc + 4;
 }
 if (td->td_md.md_ss_addr) {
  printf("SS %s (%d): breakpoint already set at %p (va %p)\n",
      p->p_comm, p->p_pid, (void *)td->td_md.md_ss_addr,
      (void *)va);
  error = EFAULT;
  goto out;
 }
 td->td_md.md_ss_addr = va;



 error = ptrace_read_int(td, (off_t)va, &td->td_md.md_ss_instr);
 if (error)
  goto out;




 error = ptrace_write_int(td, va, bpinstr);






out:
 PROC_LOCK(p);
 if (error == 0)
  CTR3(KTR_PTRACE,
      "ptrace_single_step: tid %d, break set at %#lx: (%#08x)",
      td->td_tid, va, td->td_md.md_ss_instr);
 return (error);
}
