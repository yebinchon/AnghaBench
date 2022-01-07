
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef int uintmax_t ;
struct vm_domain {int dummy; } ;


 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 int blacklist_head ;
 int listq ;
 int printf (char*,int ) ;
 int vm_domain_free_lock (struct vm_domain*) ;
 int vm_domain_free_unlock (struct vm_domain*) ;
 int vm_domain_freecnt_inc (struct vm_domain*,int) ;
 struct vm_domain* vm_pagequeue_domain (int *) ;
 int * vm_phys_paddr_to_vm_page (scalar_t__) ;
 int vm_phys_unfree_page (int *) ;

bool
vm_page_blacklist_add(vm_paddr_t pa, bool verbose)
{
 struct vm_domain *vmd;
 vm_page_t m;
 int ret;

 m = vm_phys_paddr_to_vm_page(pa);
 if (m == ((void*)0))
  return (1);

 vmd = vm_pagequeue_domain(m);
 vm_domain_free_lock(vmd);
 ret = vm_phys_unfree_page(m);
 vm_domain_free_unlock(vmd);
 if (ret != 0) {
  vm_domain_freecnt_inc(vmd, -1);
  TAILQ_INSERT_TAIL(&blacklist_head, m, listq);
  if (verbose)
   printf("Skipping page with pa 0x%jx\n", (uintmax_t)pa);
 }
 return (ret);
}
