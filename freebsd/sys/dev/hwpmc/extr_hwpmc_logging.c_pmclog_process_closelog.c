
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmclog_closelog {int dummy; } ;
struct pmc_owner {int dummy; } ;


 int CLOSELOG ;
 int PMCLOG_DESPATCH_SYNC (struct pmc_owner*) ;
 int PMCLOG_RESERVE (struct pmc_owner*,int ,int) ;

void
pmclog_process_closelog(struct pmc_owner *po)
{
 PMCLOG_RESERVE(po,CLOSELOG,sizeof(struct pmclog_closelog));
 PMCLOG_DESPATCH_SYNC(po);
}
