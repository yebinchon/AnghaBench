
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_owner {int * po_kthread; int po_flags; } ;


 int PMC_PO_OWNS_LOGFILE ;
 int PPAUSE ;
 int PROC_LOCK (int *) ;
 int PROC_UNLOCK (int *) ;
 int SIGHUP ;
 int kern_psignal (int *,int ) ;
 int msleep (int *,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pmc_kthread_mtx ;
 int wakeup_one (struct pmc_owner*) ;

__attribute__((used)) static void
pmclog_stop_kthread(struct pmc_owner *po)
{

 mtx_lock(&pmc_kthread_mtx);
 po->po_flags &= ~PMC_PO_OWNS_LOGFILE;
 if (po->po_kthread != ((void*)0)) {
  PROC_LOCK(po->po_kthread);
  kern_psignal(po->po_kthread, SIGHUP);
  PROC_UNLOCK(po->po_kthread);
 }
 wakeup_one(po);
 while (po->po_kthread)
  msleep(po->po_kthread, &pmc_kthread_mtx, PPAUSE, "pmckstp", 0);
 mtx_unlock(&pmc_kthread_mtx);
}
