
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_domain {scalar_t__ vmd_free_count; scalar_t__ vmd_pageout_free_min; int vmd_pageout_pages_needed; int vmd_domain; } ;
typedef int domainset_t ;


 int DOMAINSET_SET (int ,int *) ;
 int DOMAINSET_ZERO (int *) ;
 int PDROP ;
 int PSWP ;
 struct vm_domain* VM_DOMAIN (int) ;
 int * curproc ;
 int msleep (int*,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * pageproc ;
 int panic (char*) ;
 int vm_domain_free_assert_unlocked (struct vm_domain*) ;
 int vm_domainset_lock ;
 int vm_wait_doms (int *) ;

void
vm_wait_domain(int domain)
{
 struct vm_domain *vmd;
 domainset_t wdom;

 vmd = VM_DOMAIN(domain);
 vm_domain_free_assert_unlocked(vmd);

 if (curproc == pageproc) {
  mtx_lock(&vm_domainset_lock);
  if (vmd->vmd_free_count < vmd->vmd_pageout_free_min) {
   vmd->vmd_pageout_pages_needed = 1;
   msleep(&vmd->vmd_pageout_pages_needed,
       &vm_domainset_lock, PDROP | PSWP, "VMWait", 0);
  } else
   mtx_unlock(&vm_domainset_lock);
 } else {
  if (pageproc == ((void*)0))
   panic("vm_wait in early boot");
  DOMAINSET_ZERO(&wdom);
  DOMAINSET_SET(vmd->vmd_domain, &wdom);
  vm_wait_doms(&wdom);
 }
}
