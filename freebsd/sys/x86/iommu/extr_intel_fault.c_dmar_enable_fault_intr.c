
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dmar_unit {int dummy; } ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int DMAR_FECTL_IM ;
 int DMAR_FECTL_REG ;
 int dmar_read4 (struct dmar_unit*,int ) ;
 int dmar_write4 (struct dmar_unit*,int ,int ) ;

void
dmar_enable_fault_intr(struct dmar_unit *unit)
{
 uint32_t fectl;

 DMAR_ASSERT_LOCKED(unit);
 fectl = dmar_read4(unit, DMAR_FECTL_REG);
 fectl &= ~DMAR_FECTL_IM;
 dmar_write4(unit, DMAR_FECTL_REG, fectl);
}
