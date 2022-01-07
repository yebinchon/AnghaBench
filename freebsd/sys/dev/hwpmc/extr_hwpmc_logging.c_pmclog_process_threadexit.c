
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_tid; } ;
struct pmclog_threadexit {int dummy; } ;
struct pmc_owner {int dummy; } ;


 int PMCLOG_DESPATCH (struct pmc_owner*) ;
 int PMCLOG_EMIT32 (int ) ;
 int PMCLOG_RESERVE (struct pmc_owner*,int ,int) ;
 int THR_EXIT ;

void
pmclog_process_threadexit(struct pmc_owner *po, struct thread *td)
{

 PMCLOG_RESERVE(po, THR_EXIT, sizeof(struct pmclog_threadexit));
 PMCLOG_EMIT32(td->td_tid);
 PMCLOG_DESPATCH(po);
}
