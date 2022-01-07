
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int qi_enabled; } ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int DMAR_CCMD_CIRG_GLOB ;
 int DMAR_CCMD_ICC ;
 int DMAR_CCMD_ICC32 ;
 scalar_t__ DMAR_CCMD_REG ;
 int DMAR_WAIT_UNTIL (int) ;
 int KASSERT (int,char*) ;
 int dmar_read4 (struct dmar_unit*,scalar_t__) ;
 int dmar_write8 (struct dmar_unit*,scalar_t__,int) ;

int
dmar_inv_ctx_glob(struct dmar_unit *unit)
{
 int error;





 DMAR_ASSERT_LOCKED(unit);
 KASSERT(!unit->qi_enabled, ("QI enabled"));







 dmar_write8(unit, DMAR_CCMD_REG, DMAR_CCMD_ICC | DMAR_CCMD_CIRG_GLOB);
 DMAR_WAIT_UNTIL(((dmar_read4(unit, DMAR_CCMD_REG + 4) & DMAR_CCMD_ICC32)
     == 0));
 return (error);
}
