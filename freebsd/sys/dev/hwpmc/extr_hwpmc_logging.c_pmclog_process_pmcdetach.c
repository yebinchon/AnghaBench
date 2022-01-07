
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmclog_pmcdetach {int dummy; } ;
struct pmc_owner {int dummy; } ;
struct pmc {int pm_id; struct pmc_owner* pm_owner; } ;
typedef int pid_t ;


 int ATT ;
 int LOG ;
 int PMCDBG2 (int ,int ,int,char*,struct pmc*,int ) ;
 int PMCDETACH ;
 int PMCLOG_DESPATCH_SYNC (struct pmc_owner*) ;
 int PMCLOG_EMIT32 (int ) ;
 int PMCLOG_RESERVE (struct pmc_owner*,int ,int) ;

void
pmclog_process_pmcdetach(struct pmc *pm, pid_t pid)
{
 struct pmc_owner *po;

 PMCDBG2(LOG,ATT,1,"!pm=%p pid=%d", pm, pid);

 po = pm->pm_owner;

 PMCLOG_RESERVE(po, PMCDETACH, sizeof(struct pmclog_pmcdetach));
 PMCLOG_EMIT32(pm->pm_id);
 PMCLOG_EMIT32(pid);
 PMCLOG_DESPATCH_SYNC(po);
}
