
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_domain {int vmd_pageout_wanted; } ;


 struct vm_domain* VM_DOMAIN (int) ;
 scalar_t__ atomic_fetchadd_int (int *,int) ;
 int atomic_store_int (int *,int) ;
 scalar_t__ curproc ;
 scalar_t__ pageproc ;
 int vm_domain_pageout_assert_unlocked (struct vm_domain*) ;
 int vm_domain_pageout_lock (struct vm_domain*) ;
 int vm_domain_pageout_unlock (struct vm_domain*) ;
 int wakeup (int *) ;

void
pagedaemon_wakeup(int domain)
{
 struct vm_domain *vmd;

 vmd = VM_DOMAIN(domain);
 vm_domain_pageout_assert_unlocked(vmd);
 if (curproc == pageproc)
  return;

 if (atomic_fetchadd_int(&vmd->vmd_pageout_wanted, 1) == 0) {
  vm_domain_pageout_lock(vmd);
  atomic_store_int(&vmd->vmd_pageout_wanted, 1);
  wakeup(&vmd->vmd_pageout_wanted);
  vm_domain_pageout_unlock(vmd);
 }
}
