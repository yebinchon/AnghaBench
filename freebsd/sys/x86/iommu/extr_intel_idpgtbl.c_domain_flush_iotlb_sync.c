
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
struct dmar_unit {int hw_cap; int unit; int hw_ecap; int qi_enabled; } ;
struct dmar_domain {int domain; struct dmar_unit* dmar; } ;
typedef int dmar_gaddr_t ;


 int DMAR_CAP_PSI ;
 int DMAR_ECAP_IRO (int ) ;
 int DMAR_IOTLB_DID (int ) ;
 int DMAR_IOTLB_IAIG_INVLD ;
 int DMAR_IOTLB_IAIG_MASK ;
 int DMAR_IOTLB_IAIG_PAGE ;
 int DMAR_IOTLB_IIRG_DOM ;
 int DMAR_IOTLB_IIRG_PAGE ;
 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int KASSERT (int,char*) ;
 int calc_am (struct dmar_unit*,int,int,int*) ;
 int dmar_write8 (struct dmar_unit*,int,int) ;
 int domain_wait_iotlb_flush (struct dmar_unit*,int,int) ;

void
domain_flush_iotlb_sync(struct dmar_domain *domain, dmar_gaddr_t base,
    dmar_gaddr_t size)
{
 struct dmar_unit *unit;
 dmar_gaddr_t isize;
 uint64_t iotlbr;
 int am, iro;

 unit = domain->dmar;
 KASSERT(!unit->qi_enabled, ("dmar%d: sync iotlb flush call",
     unit->unit));
 iro = DMAR_ECAP_IRO(unit->hw_ecap) * 16;
 DMAR_LOCK(unit);
 if ((unit->hw_cap & DMAR_CAP_PSI) == 0 || size > 2 * 1024 * 1024) {
  iotlbr = domain_wait_iotlb_flush(unit, DMAR_IOTLB_IIRG_DOM |
      DMAR_IOTLB_DID(domain->domain), iro);
  KASSERT((iotlbr & DMAR_IOTLB_IAIG_MASK) !=
      DMAR_IOTLB_IAIG_INVLD,
      ("dmar%d: invalidation failed %jx", unit->unit,
      (uintmax_t)iotlbr));
 } else {
  for (; size > 0; base += isize, size -= isize) {
   am = calc_am(unit, base, size, &isize);
   dmar_write8(unit, iro, base | am);
   iotlbr = domain_wait_iotlb_flush(unit,
       DMAR_IOTLB_IIRG_PAGE |
       DMAR_IOTLB_DID(domain->domain), iro);
   KASSERT((iotlbr & DMAR_IOTLB_IAIG_MASK) !=
       DMAR_IOTLB_IAIG_INVLD,
       ("dmar%d: PSI invalidation failed "
       "iotlbr 0x%jx base 0x%jx size 0x%jx am %d",
       unit->unit, (uintmax_t)iotlbr,
       (uintmax_t)base, (uintmax_t)size, am));




   if ((iotlbr & DMAR_IOTLB_IAIG_MASK) !=
       DMAR_IOTLB_IAIG_PAGE)
    break;
  }
 }
 DMAR_UNLOCK(unit);
}
