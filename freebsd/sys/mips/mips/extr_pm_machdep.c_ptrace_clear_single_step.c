
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ md_ss_addr; int md_ss_instr; } ;
struct thread {TYPE_1__ td_md; int td_tid; struct proc* td_proc; } ;
struct proc {int p_pid; int p_comm; } ;


 int CTR3 (int ,char*,int ,scalar_t__,int ) ;
 int EINVAL ;
 int KTR_PTRACE ;
 int LOG_ERR ;
 int MA_OWNED ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int log (int ,char*,int ,int ,void*,int ) ;
 int ptrace_write_int (struct thread*,scalar_t__,int ) ;

int
ptrace_clear_single_step(struct thread *td)
{
 struct proc *p;
 int error;

 p = td->td_proc;
 PROC_LOCK_ASSERT(p, MA_OWNED);
 if (!td->td_md.md_ss_addr)
  return EINVAL;




 PROC_UNLOCK(p);
 CTR3(KTR_PTRACE,
     "ptrace_clear_single_step: tid %d, restore instr at %#lx: %#08x",
     td->td_tid, td->td_md.md_ss_addr, td->td_md.md_ss_instr);
 error = ptrace_write_int(td, td->td_md.md_ss_addr,
     td->td_md.md_ss_instr);
 PROC_LOCK(p);



 if (error != 0) {
  log(LOG_ERR,
      "SS %s %d: can't restore instruction at %p: %x\n",
      p->p_comm, p->p_pid, (void *)td->td_md.md_ss_addr,
      td->td_md.md_ss_instr);
 }
 td->td_md.md_ss_addr = 0;
 return 0;
}
