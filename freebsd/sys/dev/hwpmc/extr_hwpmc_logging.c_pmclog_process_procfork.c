
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmclog_procfork {int dummy; } ;
struct pmc_owner {int dummy; } ;
typedef int pid_t ;


 int PMCLOG_DESPATCH (struct pmc_owner*) ;
 int PMCLOG_EMIT32 (int ) ;
 int PMCLOG_RESERVE (struct pmc_owner*,int ,int) ;
 int PROCFORK ;

void
pmclog_process_procfork(struct pmc_owner *po, pid_t oldpid, pid_t newpid)
{
 PMCLOG_RESERVE(po, PROCFORK, sizeof(struct pmclog_procfork));
 PMCLOG_EMIT32(oldpid);
 PMCLOG_EMIT32(newpid);
 PMCLOG_DESPATCH(po);
}
