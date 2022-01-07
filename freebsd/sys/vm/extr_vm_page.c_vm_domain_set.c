
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_domain {int vmd_minset; int vmd_severeset; int vmd_domain; } ;


 int DOMAINSET_SET (int ,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vm_domainset_lock ;
 int vm_min_domains ;
 scalar_t__ vm_paging_min (struct vm_domain*) ;
 scalar_t__ vm_paging_severe (struct vm_domain*) ;
 int vm_severe_domains ;

void
vm_domain_set(struct vm_domain *vmd)
{

 mtx_lock(&vm_domainset_lock);
 if (!vmd->vmd_minset && vm_paging_min(vmd)) {
  vmd->vmd_minset = 1;
  DOMAINSET_SET(vmd->vmd_domain, &vm_min_domains);
 }
 if (!vmd->vmd_severeset && vm_paging_severe(vmd)) {
  vmd->vmd_severeset = 1;
  DOMAINSET_SET(vmd->vmd_domain, &vm_severe_domains);
 }
 mtx_unlock(&vm_domainset_lock);
}
