
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PVM ;
 int msleep (int *,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vm_domainset_lock ;
 int vm_min_domains ;
 int vm_min_waiters ;
 scalar_t__ vm_page_count_min () ;

void
vm_wait_min(void)
{

 mtx_lock(&vm_domainset_lock);
 while (vm_page_count_min()) {
  vm_min_waiters++;
  msleep(&vm_min_domains, &vm_domainset_lock, PVM, "vmwait", 0);
 }
 mtx_unlock(&vm_domainset_lock);
}
