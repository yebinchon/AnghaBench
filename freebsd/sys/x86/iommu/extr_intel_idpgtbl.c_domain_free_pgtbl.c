
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int * vm_object_t ;
struct dmar_domain {int flags; int * pgtbl_obj; TYPE_1__* dmar; } ;
struct TYPE_7__ {scalar_t__ ref_count; } ;
struct TYPE_6__ {int hw_ecap; } ;


 int DMAR_DOMAIN_ASSERT_PGLOCKED (struct dmar_domain*) ;
 int DMAR_DOMAIN_IDMAP ;
 int DMAR_ECAP_PT ;
 int KASSERT (int,char*) ;
 int VM_OBJECT_ASSERT_WLOCKED (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 int put_idmap_pgtbl (int *) ;
 int vm_object_deallocate (int *) ;
 TYPE_2__* vm_page_lookup (int *,int ) ;
 TYPE_2__* vm_page_next (TYPE_2__*) ;

void
domain_free_pgtbl(struct dmar_domain *domain)
{
 vm_object_t obj;
 vm_page_t m;

 obj = domain->pgtbl_obj;
 if (obj == ((void*)0)) {
  KASSERT((domain->dmar->hw_ecap & DMAR_ECAP_PT) != 0 &&
      (domain->flags & DMAR_DOMAIN_IDMAP) != 0,
      ("lost pagetable object domain %p", domain));
  return;
 }
 DMAR_DOMAIN_ASSERT_PGLOCKED(domain);
 domain->pgtbl_obj = ((void*)0);

 if ((domain->flags & DMAR_DOMAIN_IDMAP) != 0) {
  put_idmap_pgtbl(obj);
  domain->flags &= ~DMAR_DOMAIN_IDMAP;
  return;
 }


 VM_OBJECT_ASSERT_WLOCKED(obj);
 for (m = vm_page_lookup(obj, 0); m != ((void*)0); m = vm_page_next(m))
  m->ref_count = 0;
 VM_OBJECT_WUNLOCK(obj);
 vm_object_deallocate(obj);
}
