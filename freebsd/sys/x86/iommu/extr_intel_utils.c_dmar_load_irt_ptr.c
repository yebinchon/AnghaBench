
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct dmar_unit {int irte_cnt; int hw_gcmd; scalar_t__ irt_phys; } ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int DMAR_GCMD_REG ;
 int DMAR_GCMD_SIRTP ;
 int DMAR_GSTS_IRTPS ;
 int DMAR_GSTS_REG ;
 scalar_t__ DMAR_IRTA_EIME ;
 int DMAR_IRTA_REG ;
 scalar_t__ DMAR_IRTA_S_MASK ;
 int DMAR_WAIT_UNTIL (int) ;
 scalar_t__ DMAR_X2APIC (struct dmar_unit*) ;
 int KASSERT (int,char*) ;
 int dmar_read4 (struct dmar_unit*,int ) ;
 int dmar_write4 (struct dmar_unit*,int ,int) ;
 int dmar_write8 (struct dmar_unit*,int ,scalar_t__) ;
 scalar_t__ fls (int) ;
 scalar_t__ powerof2 (int) ;

int
dmar_load_irt_ptr(struct dmar_unit *unit)
{
 uint64_t irta, s;
 int error;

 DMAR_ASSERT_LOCKED(unit);
 irta = unit->irt_phys;
 if (DMAR_X2APIC(unit))
  irta |= DMAR_IRTA_EIME;
 s = fls(unit->irte_cnt) - 2;
 KASSERT(unit->irte_cnt >= 2 && s <= DMAR_IRTA_S_MASK &&
     powerof2(unit->irte_cnt),
     ("IRTA_REG_S overflow %x", unit->irte_cnt));
 irta |= s;
 dmar_write8(unit, DMAR_IRTA_REG, irta);
 dmar_write4(unit, DMAR_GCMD_REG, unit->hw_gcmd | DMAR_GCMD_SIRTP);
 DMAR_WAIT_UNTIL(((dmar_read4(unit, DMAR_GSTS_REG) & DMAR_GSTS_IRTPS)
     != 0));
 return (error);
}
