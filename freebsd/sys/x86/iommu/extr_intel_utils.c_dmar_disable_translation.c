
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int hw_gcmd; } ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int DMAR_GCMD_REG ;
 int DMAR_GCMD_TE ;
 int DMAR_GSTS_REG ;
 int DMAR_GSTS_TES ;
 int DMAR_WAIT_UNTIL (int) ;
 int dmar_read4 (struct dmar_unit*,int ) ;
 int dmar_write4 (struct dmar_unit*,int ,int ) ;

int
dmar_disable_translation(struct dmar_unit *unit)
{
 int error;

 DMAR_ASSERT_LOCKED(unit);
 unit->hw_gcmd &= ~DMAR_GCMD_TE;
 dmar_write4(unit, DMAR_GCMD_REG, unit->hw_gcmd);
 DMAR_WAIT_UNTIL(((dmar_read4(unit, DMAR_GSTS_REG) & DMAR_GSTS_TES)
     == 0));
 return (error);
}
