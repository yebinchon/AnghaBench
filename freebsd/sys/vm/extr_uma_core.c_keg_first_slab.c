
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * uma_slab_t ;
typedef TYPE_1__* uma_keg_t ;
typedef TYPE_2__* uma_domain_t ;
struct TYPE_6__ {int ud_part_slab; int ud_free_slab; } ;
struct TYPE_5__ {TYPE_2__* uk_domain; } ;


 int KASSERT (int,char*) ;
 int KEG_LOCK_ASSERT (TYPE_1__*) ;
 int LIST_EMPTY (int *) ;
 int * LIST_FIRST (int *) ;
 int LIST_INSERT_HEAD (int *,int *,int ) ;
 int LIST_REMOVE (int *,int ) ;
 int us_link ;
 int vm_ndomains ;

__attribute__((used)) static uma_slab_t
keg_first_slab(uma_keg_t keg, int domain, bool rr)
{
 uma_domain_t dom;
 uma_slab_t slab;
 int start;

 KASSERT(domain >= 0 && domain < vm_ndomains,
     ("keg_first_slab: domain %d out of range", domain));
 KEG_LOCK_ASSERT(keg);

 slab = ((void*)0);
 start = domain;
 do {
  dom = &keg->uk_domain[domain];
  if (!LIST_EMPTY(&dom->ud_part_slab))
   return (LIST_FIRST(&dom->ud_part_slab));
  if (!LIST_EMPTY(&dom->ud_free_slab)) {
   slab = LIST_FIRST(&dom->ud_free_slab);
   LIST_REMOVE(slab, us_link);
   LIST_INSERT_HEAD(&dom->ud_part_slab, slab, us_link);
   return (slab);
  }
  if (rr)
   domain = (domain + 1) % vm_ndomains;
 } while (domain != start);

 return (((void*)0));
}
