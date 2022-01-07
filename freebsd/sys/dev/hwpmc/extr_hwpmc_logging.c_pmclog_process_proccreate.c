
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_comm; int p_flag; int p_pid; } ;
struct pmclog_proccreate {int dummy; } ;
struct pmc_owner {int dummy; } ;


 scalar_t__ MAXCOMLEN ;
 int PMCLOG_DESPATCH (struct pmc_owner*) ;
 int PMCLOG_DESPATCH_SYNC (struct pmc_owner*) ;
 int PMCLOG_EMIT32 (int ) ;
 int PMCLOG_EMITSTRING (int ,scalar_t__) ;
 int PMCLOG_RESERVE (struct pmc_owner*,int ,int) ;
 int PROC_CREATE ;

void
pmclog_process_proccreate(struct pmc_owner *po, struct proc *p, int sync)
{
 if (sync) {
  PMCLOG_RESERVE(po, PROC_CREATE, sizeof(struct pmclog_proccreate));
  PMCLOG_EMIT32(p->p_pid);
  PMCLOG_EMIT32(p->p_flag);
  PMCLOG_EMITSTRING(p->p_comm, MAXCOMLEN+1);
  PMCLOG_DESPATCH_SYNC(po);
 } else {
  PMCLOG_RESERVE(po, PROC_CREATE, sizeof(struct pmclog_proccreate));
  PMCLOG_EMIT32(p->p_pid);
  PMCLOG_EMIT32(p->p_flag);
  PMCLOG_EMITSTRING(p->p_comm, MAXCOMLEN+1);
  PMCLOG_DESPATCH(po);
 }
}
