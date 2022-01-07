
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int domainset_t ;


 int PDROP ;
 int PVM ;
 scalar_t__ curproc ;
 int msleep (int *,int *,int,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ pageproc ;
 int vm_domainset_lock ;
 int vm_min_domains ;
 int vm_min_waiters ;
 scalar_t__ vm_page_count_min_set (int const*) ;
 int vm_pageproc_waiters ;

void
vm_wait_doms(const domainset_t *wdoms)
{
 if (curproc == pageproc) {
  mtx_lock(&vm_domainset_lock);
  vm_pageproc_waiters++;
  msleep(&vm_pageproc_waiters, &vm_domainset_lock, PVM | PDROP,
      "pageprocwait", 1);
 } else {





  mtx_lock(&vm_domainset_lock);
  if (vm_page_count_min_set(wdoms)) {
   vm_min_waiters++;
   msleep(&vm_min_domains, &vm_domainset_lock,
       PVM | PDROP, "vmwait", 0);
  } else
   mtx_unlock(&vm_domainset_lock);
 }
}
