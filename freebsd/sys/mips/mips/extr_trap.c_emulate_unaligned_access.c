
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int pc; int badvaddr; int cause; } ;
struct thread {scalar_t__ td_tid; } ;
struct proc {int p_comm; scalar_t__ p_pid; } ;
typedef int register_t ;
typedef int intmax_t ;


 scalar_t__ DELAYBRANCH (int ) ;
 int LOG_INFO ;
 int MipsEmulateBranch (struct trapframe*,int,int ,int ) ;
 int * access_name ;
 struct proc* curproc ;
 struct thread* curthread ;
 int log (int ,char*,int ,long,int ,long,int ,int ) ;
 int mips_unaligned_load_store (struct trapframe*,int,int,int) ;
 scalar_t__ ppsratecheck (int *,int *,int ) ;
 int unaligned_curerr ;
 int unaligned_lasterr ;
 int unaligned_pps_log_limit ;

__attribute__((used)) static int
emulate_unaligned_access(struct trapframe *frame, int mode)
{
 register_t pc;
 int access_type = 0;
 struct thread *td = curthread;
 struct proc *p = curproc;

 pc = frame->pc + (DELAYBRANCH(frame->cause) ? 4 : 0);




 if (!((pc & 3) || (pc == frame->badvaddr))) {
  access_type = mips_unaligned_load_store(frame,
      mode, frame->badvaddr, pc);

  if (access_type) {
   if (DELAYBRANCH(frame->cause))
    frame->pc = MipsEmulateBranch(frame, frame->pc,
        0, 0);
   else
    frame->pc += 4;

   if (ppsratecheck(&unaligned_lasterr,
       &unaligned_curerr, unaligned_pps_log_limit)) {

    log(LOG_INFO,
        "Unaligned %s: pid=%ld (%s), tid=%ld, "
        "pc=%#jx, badvaddr=%#jx\n",
        access_name[access_type - 1],
        (long) p->p_pid,
        p->p_comm,
        (long) td->td_tid,
        (intmax_t)pc,
        (intmax_t)frame->badvaddr);
   }
  }
 }
 return access_type;
}
