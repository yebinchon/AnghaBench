
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_owner {int po_flags; } ;


 int CLO ;
 int DELAY (int) ;
 int LOG ;
 int PMCDBG1 (int ,int ,int,char*,struct pmc_owner*) ;
 int PMC_PO_SHUTDOWN ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pmc_kthread_mtx ;
 int pmclog_process_closelog (struct pmc_owner*) ;
 int pmclog_schedule_all (struct pmc_owner*) ;
 int wakeup_one (struct pmc_owner*) ;

int
pmclog_close(struct pmc_owner *po)
{

 PMCDBG1(LOG,CLO,1, "po=%p", po);

 pmclog_process_closelog(po);

 mtx_lock(&pmc_kthread_mtx);




 po->po_flags |= PMC_PO_SHUTDOWN;

 DELAY(50);




 pmclog_schedule_all(po);
 wakeup_one(po);

 mtx_unlock(&pmc_kthread_mtx);

 return (0);
}
