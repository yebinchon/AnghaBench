
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uma_zone_t ;
typedef TYPE_2__* uma_slab_t ;
typedef TYPE_3__* uma_keg_t ;
typedef TYPE_4__* uma_domain_t ;
struct vm_domainset_iter {int dummy; } ;
struct TYPE_16__ {TYPE_1__* dr_policy; } ;
struct TYPE_15__ {int ud_free_slab; } ;
struct TYPE_14__ {int uk_ipers; TYPE_5__ uk_dr; TYPE_4__* uk_domain; } ;
struct TYPE_13__ {size_t us_domain; TYPE_3__* us_keg; } ;
struct TYPE_12__ {int ds_mask; } ;


 int KEG_GET (int ,TYPE_3__*) ;
 int KEG_LOCK (TYPE_3__*) ;
 int KEG_UNLOCK (TYPE_3__*) ;
 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int MPASS (int) ;
 int M_NOWAIT ;
 int M_WAITOK ;
 TYPE_2__* keg_alloc_slab (TYPE_3__*,int ,int,int ,int) ;
 int us_link ;
 scalar_t__ vm_domainset_iter_policy (struct vm_domainset_iter*,int*) ;
 int vm_domainset_iter_policy_ref_init (struct vm_domainset_iter*,TYPE_5__*,int*,int*) ;
 int vm_wait_doms (int *) ;

void
uma_prealloc(uma_zone_t zone, int items)
{
 struct vm_domainset_iter di;
 uma_domain_t dom;
 uma_slab_t slab;
 uma_keg_t keg;
 int aflags, domain, slabs;

 KEG_GET(zone, keg);
 KEG_LOCK(keg);
 slabs = items / keg->uk_ipers;
 if (slabs * keg->uk_ipers < items)
  slabs++;
 while (slabs-- > 0) {
  aflags = M_NOWAIT;
  vm_domainset_iter_policy_ref_init(&di, &keg->uk_dr, &domain,
      &aflags);
  for (;;) {
   slab = keg_alloc_slab(keg, zone, domain, M_WAITOK,
       aflags);
   if (slab != ((void*)0)) {
    MPASS(slab->us_keg == keg);
    dom = &keg->uk_domain[slab->us_domain];
    LIST_INSERT_HEAD(&dom->ud_free_slab, slab,
        us_link);
    break;
   }
   KEG_LOCK(keg);
   if (vm_domainset_iter_policy(&di, &domain) != 0) {
    KEG_UNLOCK(keg);
    vm_wait_doms(&keg->uk_dr.dr_policy->ds_mask);
    KEG_LOCK(keg);
   }
  }
 }
 KEG_UNLOCK(keg);
}
