
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int hw_cap; } ;
typedef int dmar_gaddr_t ;


 int DMAR_CAP_MAMV (int ) ;
 int DMAR_PAGE_SHIFT ;

int
calc_am(struct dmar_unit *unit, dmar_gaddr_t base, dmar_gaddr_t size,
    dmar_gaddr_t *isizep)
{
 dmar_gaddr_t isize;
 int am;

 for (am = DMAR_CAP_MAMV(unit->hw_cap);; am--) {
  isize = 1ULL << (am + DMAR_PAGE_SHIFT);
  if ((base & (isize - 1)) == 0 && size >= isize)
   break;
  if (am == 0)
   break;
 }
 *isizep = isize;
 return (am);
}
