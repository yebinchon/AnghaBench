
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domainset {int ds_mask; } ;


 int PDROP ;
 int PUSER ;
 int msleep (int *,int *,int,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vm_domainset_lock ;
 int vm_min_domains ;
 int vm_min_waiters ;
 scalar_t__ vm_page_count_min_set (int *) ;

void
vm_waitpfault(struct domainset *dset, int timo)
{






 mtx_lock(&vm_domainset_lock);
 if (vm_page_count_min_set(&dset->ds_mask)) {
  vm_min_waiters++;
  msleep(&vm_min_domains, &vm_domainset_lock, PUSER | PDROP,
      "pfault", timo);
 } else
  mtx_unlock(&vm_domainset_lock);
}
