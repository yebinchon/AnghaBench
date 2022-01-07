
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct HBB_MessageUnit {int iop2drv_doorbell_mask; } ;
struct AdapterControlBlock {int adapter_type; scalar_t__ pmu; } ;







 int ARCMSR_HBCMU_ALL_INTMASKENABLE ;
 int ARCMSR_HBDMU_ALL_INT_DISABLE ;
 int ARCMSR_HBEMU_ALL_INTMASKENABLE ;
 int ARCMSR_IOP2DRV_MESSAGE_CMD_DONE ;
 int ARCMSR_MU_OUTBOUND_ALL_INTMASKENABLE ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int) ;
 int HBA_MessageUnit ;
 int HBC_MessageUnit ;
 int HBD_MessageUnit ;
 int HBE_MessageUnit ;
 int READ_CHIP_REG32 (int ,int ) ;
 int WRITE_CHIP_REG32 (int ,int ,int ) ;
 int host_int_mask ;
 int outbound_intmask ;
 int pcief0_int_enable ;

__attribute__((used)) static u_int32_t arcmsr_disable_allintr( struct AdapterControlBlock *acb)
{
 u_int32_t intmask_org = 0;

 switch (acb->adapter_type) {
 case 132: {

   intmask_org = CHIP_REG_READ32(HBA_MessageUnit, 0, outbound_intmask);
   CHIP_REG_WRITE32(HBA_MessageUnit, 0, outbound_intmask, intmask_org|ARCMSR_MU_OUTBOUND_ALL_INTMASKENABLE);
  }
  break;
 case 131: {
   struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;

   intmask_org = READ_CHIP_REG32(0, phbbmu->iop2drv_doorbell_mask)
      & (~ARCMSR_IOP2DRV_MESSAGE_CMD_DONE);
   WRITE_CHIP_REG32(0, phbbmu->iop2drv_doorbell_mask, 0);
  }
  break;
 case 130: {

   intmask_org = CHIP_REG_READ32(HBC_MessageUnit, 0, host_int_mask) ;
   CHIP_REG_WRITE32(HBC_MessageUnit, 0, host_int_mask, intmask_org|ARCMSR_HBCMU_ALL_INTMASKENABLE);
  }
  break;
 case 129: {

   intmask_org = CHIP_REG_READ32(HBD_MessageUnit, 0, pcief0_int_enable) ;
   CHIP_REG_WRITE32(HBD_MessageUnit, 0, pcief0_int_enable, ARCMSR_HBDMU_ALL_INT_DISABLE);
  }
  break;
 case 128: {

   intmask_org = CHIP_REG_READ32(HBC_MessageUnit, 0, host_int_mask) ;
   CHIP_REG_WRITE32(HBE_MessageUnit, 0, host_int_mask, intmask_org | ARCMSR_HBEMU_ALL_INTMASKENABLE);
  }
  break;
 }
 return (intmask_org);
}
