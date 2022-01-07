
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct syscall_args {int code; } ;
struct thread {int td_pflags; int td_dbgflags; int * td_retval; int td_errno; int td_frame; struct syscall_args td_sa; struct proc* td_proc; } ;
struct proc {int p_flag2; int p_flag; int p_ptevents; } ;
struct TYPE_4__ {int ksi_code; int ksi_errno; int ksi_signo; } ;
typedef TYPE_1__ ksiginfo_t ;


 int ECAPMODE ;
 int ENOTCAPABLE ;
 scalar_t__ IN_CAPABILITY_MODE (struct thread*) ;
 int KASSERT (int,char*) ;
 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_SYSRET ;
 int P2_TRAPCAP ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int PTRACE_SCX ;
 int P_TRACED ;
 int SIGTRAP ;
 int STOPEVENT (struct proc*,int ,int ) ;
 int S_SCX ;
 int TDB_EXEC ;
 int TDB_FORK ;
 int TDB_SCX ;
 int TDP_FORKING ;
 int TDP_RFPPWAIT ;
 int TRAP_CAP ;
 scalar_t__ __predict_false (int) ;
 int fork_rfppwait (struct thread*) ;
 int ksiginfo_init_trap (TYPE_1__*) ;
 int ktrsysret (int ,int ,int ) ;
 int ptracestop (struct thread*,int ,int *) ;
 scalar_t__ trap_enotcap ;
 int trapsignal (struct thread*,TYPE_1__*) ;
 int userret (struct thread*,int ) ;

__attribute__((used)) static inline void
syscallret(struct thread *td)
{
 struct proc *p;
 struct syscall_args *sa;
 ksiginfo_t ksi;
 int traced;

 KASSERT((td->td_pflags & TDP_FORKING) == 0,
     ("fork() did not clear TDP_FORKING upon completion"));

 p = td->td_proc;
 sa = &td->td_sa;
 if ((trap_enotcap || (p->p_flag2 & P2_TRAPCAP) != 0) &&
     IN_CAPABILITY_MODE(td)) {
  if (td->td_errno == ENOTCAPABLE || td->td_errno == ECAPMODE) {
   ksiginfo_init_trap(&ksi);
   ksi.ksi_signo = SIGTRAP;
   ksi.ksi_errno = td->td_errno;
   ksi.ksi_code = TRAP_CAP;
   trapsignal(td, &ksi);
  }
 }




 userret(td, td->td_frame);







 if (p->p_flag & P_TRACED) {
  traced = 1;
  PROC_LOCK(p);
  td->td_dbgflags |= TDB_SCX;
  PROC_UNLOCK(p);
 } else
  traced = 0;





 STOPEVENT(p, S_SCX, sa->code);
 if (traced || (td->td_dbgflags & (TDB_EXEC | TDB_FORK)) != 0) {
  PROC_LOCK(p);






  if (traced &&
      ((td->td_dbgflags & (TDB_FORK | TDB_EXEC)) != 0 ||
      (p->p_ptevents & PTRACE_SCX) != 0))
   ptracestop(td, SIGTRAP, ((void*)0));
  td->td_dbgflags &= ~(TDB_SCX | TDB_EXEC | TDB_FORK);
  PROC_UNLOCK(p);
 }

 if (__predict_false(td->td_pflags & TDP_RFPPWAIT))
  fork_rfppwait(td);
}
