
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmclog_dropnotify {int dummy; } ;
struct pmc_owner {int dummy; } ;


 int DROPNOTIFY ;
 int PMCLOG_DESPATCH (struct pmc_owner*) ;
 int PMCLOG_RESERVE (struct pmc_owner*,int ,int) ;

void
pmclog_process_dropnotify(struct pmc_owner *po)
{
 PMCLOG_RESERVE(po,DROPNOTIFY,sizeof(struct pmclog_dropnotify));
 PMCLOG_DESPATCH(po);
}
