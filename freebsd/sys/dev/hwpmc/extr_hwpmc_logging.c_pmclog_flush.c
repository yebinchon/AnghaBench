
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_owner {int po_error; int po_flags; } ;


 int EINVAL ;
 int FLS ;
 int LOG ;
 int PMCDBG1 (int ,int ,int,char*,struct pmc_owner*) ;
 int PMC_PO_OWNS_LOGFILE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pmc_kthread_mtx ;
 int pmclog_schedule_all (struct pmc_owner*) ;

int
pmclog_flush(struct pmc_owner *po, int force)
{
 int error;

 PMCDBG1(LOG,FLS,1, "po=%p", po);





 if (po->po_error)
  return (po->po_error);

 error = 0;




 mtx_lock(&pmc_kthread_mtx);
 if ((po->po_flags & PMC_PO_OWNS_LOGFILE) == 0) {
  error = EINVAL;
  goto error;
 }

 pmclog_schedule_all(po);
 error:
 mtx_unlock(&pmc_kthread_mtx);

 return (error);
}
