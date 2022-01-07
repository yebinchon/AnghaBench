
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dmar_unit {int unit; } ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int DMAR_HAS_QI (struct dmar_unit*) ;
 int DMAR_IECTL_IM ;
 int DMAR_IECTL_REG ;
 int KASSERT (int ,char*) ;
 int dmar_read4 (struct dmar_unit*,int ) ;
 int dmar_write4 (struct dmar_unit*,int ,int) ;

void
dmar_disable_qi_intr(struct dmar_unit *unit)
{
 uint32_t iectl;

 DMAR_ASSERT_LOCKED(unit);
 KASSERT(DMAR_HAS_QI(unit), ("dmar%d: QI is not supported", unit->unit));
 iectl = dmar_read4(unit, DMAR_IECTL_REG);
 dmar_write4(unit, DMAR_IECTL_REG, iectl | DMAR_IECTL_IM);
}
