
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {scalar_t__ p_state; int p_flag; } ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ PRS_NORMAL ;
 int PVM ;
 int P_INMEM ;
 int P_SWAPPINGIN ;
 int P_SWAPPINGOUT ;
 int SWAPIN_INTERVAL ;
 int allproc_lock ;
 int faultin (struct proc*) ;
 int proc0 ;
 struct proc* swapper_selector (int ) ;
 int swapper_wkilled_only () ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;
 int tsleep (int *,int ,char*,int ) ;

void
swapper(void)
{
 struct proc *p;

 for (;;) {
  sx_slock(&allproc_lock);
  p = swapper_selector(swapper_wkilled_only());
  sx_sunlock(&allproc_lock);

  if (p == ((void*)0)) {
   tsleep(&proc0, PVM, "swapin", SWAPIN_INTERVAL);
  } else {
   PROC_LOCK_ASSERT(p, MA_OWNED);
   if (p->p_state == PRS_NORMAL && (p->p_flag & (P_INMEM |
       P_SWAPPINGOUT | P_SWAPPINGIN)) == 0) {
    faultin(p);
   }
   PROC_UNLOCK(p);
  }
 }
}
