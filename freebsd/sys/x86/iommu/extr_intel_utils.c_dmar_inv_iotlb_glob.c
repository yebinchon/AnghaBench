
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int hw_ecap; int qi_enabled; } ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int DMAR_ECAP_IRO (int ) ;
 int DMAR_IOTLB_DR ;
 int DMAR_IOTLB_DW ;
 int DMAR_IOTLB_IIRG_GLB ;
 int DMAR_IOTLB_IVT ;
 int DMAR_IOTLB_IVT32 ;
 scalar_t__ DMAR_IOTLB_REG_OFF ;
 int DMAR_WAIT_UNTIL (int) ;
 int KASSERT (int,char*) ;
 int dmar_read4 (struct dmar_unit*,scalar_t__) ;
 int dmar_write8 (struct dmar_unit*,scalar_t__,int) ;

int
dmar_inv_iotlb_glob(struct dmar_unit *unit)
{
 int error, reg;

 DMAR_ASSERT_LOCKED(unit);
 KASSERT(!unit->qi_enabled, ("QI enabled"));

 reg = 16 * DMAR_ECAP_IRO(unit->hw_ecap);

 dmar_write8(unit, reg + DMAR_IOTLB_REG_OFF, DMAR_IOTLB_IVT |
     DMAR_IOTLB_IIRG_GLB | DMAR_IOTLB_DR | DMAR_IOTLB_DW);
 DMAR_WAIT_UNTIL(((dmar_read4(unit, reg + DMAR_IOTLB_REG_OFF + 4) &
     DMAR_IOTLB_IVT32) == 0));
 return (error);
}
