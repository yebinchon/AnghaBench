
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_name; int td_tid; struct proc* td_proc; } ;
struct proc {int p_flag; int p_pid; } ;
struct pmclog_threadcreate {int dummy; } ;
struct pmc_owner {int dummy; } ;


 scalar_t__ MAXCOMLEN ;
 int PMCLOG_DESPATCH (struct pmc_owner*) ;
 int PMCLOG_DESPATCH_SYNC (struct pmc_owner*) ;
 int PMCLOG_EMIT32 (int ) ;
 int PMCLOG_EMITSTRING (int ,scalar_t__) ;
 int PMCLOG_RESERVE (struct pmc_owner*,int ,int) ;
 int THR_CREATE ;

void
pmclog_process_threadcreate(struct pmc_owner *po, struct thread *td, int sync)
{
 struct proc *p;

 p = td->td_proc;
 if (sync) {
  PMCLOG_RESERVE(po, THR_CREATE, sizeof(struct pmclog_threadcreate));
  PMCLOG_EMIT32(td->td_tid);
  PMCLOG_EMIT32(p->p_pid);
  PMCLOG_EMIT32(p->p_flag);
  PMCLOG_EMIT32(0);
  PMCLOG_EMITSTRING(td->td_name, MAXCOMLEN+1);
  PMCLOG_DESPATCH_SYNC(po);
 } else {
  PMCLOG_RESERVE(po, THR_CREATE, sizeof(struct pmclog_threadcreate));
  PMCLOG_EMIT32(td->td_tid);
  PMCLOG_EMIT32(p->p_pid);
  PMCLOG_EMIT32(p->p_flag);
  PMCLOG_EMIT32(0);
  PMCLOG_EMITSTRING(td->td_name, MAXCOMLEN+1);
  PMCLOG_DESPATCH(po);
 }
}
