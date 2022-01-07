
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmclog_sysexit {int dummy; } ;
struct pmc_owner {int dummy; } ;
typedef int pid_t ;


 int PMCLOG_DESPATCH (struct pmc_owner*) ;
 int PMCLOG_EMIT32 (int ) ;
 int PMCLOG_RESERVE (struct pmc_owner*,int ,int) ;
 int SYSEXIT ;

void
pmclog_process_sysexit(struct pmc_owner *po, pid_t pid)
{
 PMCLOG_RESERVE(po, SYSEXIT, sizeof(struct pmclog_sysexit));
 PMCLOG_EMIT32(pid);
 PMCLOG_DESPATCH(po);
}
