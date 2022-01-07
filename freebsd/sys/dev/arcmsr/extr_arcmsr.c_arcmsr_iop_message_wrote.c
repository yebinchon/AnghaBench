
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HBB_MessageUnit {int drv2iop_doorbell; } ;
struct AdapterControlBlock {int adapter_type; int out_doorbell; scalar_t__ pmu; } ;







 int ARCMSR_DRV2IOP_DATA_WRITE_OK ;
 int ARCMSR_HBCMU_DRV2IOP_DATA_WRITE_OK ;
 int ARCMSR_HBDMU_DRV2IOP_DATA_IN_READY ;
 int ARCMSR_HBEMU_DRV2IOP_DATA_WRITE_OK ;
 int ARCMSR_INBOUND_DRIVER_DATA_WRITE_OK ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int ) ;
 int HBA_MessageUnit ;
 int HBC_MessageUnit ;
 int HBD_MessageUnit ;
 int HBE_MessageUnit ;
 int WRITE_CHIP_REG32 (int ,int ,int ) ;
 int inbound_doorbell ;
 int iobound_doorbell ;

__attribute__((used)) static void arcmsr_iop_message_wrote(struct AdapterControlBlock *acb)
{
 switch (acb->adapter_type) {
 case 132: {




   CHIP_REG_WRITE32(HBA_MessageUnit, 0, inbound_doorbell, ARCMSR_INBOUND_DRIVER_DATA_WRITE_OK);
  }
  break;
 case 131: {
   struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;




   WRITE_CHIP_REG32(0, phbbmu->drv2iop_doorbell, ARCMSR_DRV2IOP_DATA_WRITE_OK);
  }
  break;
 case 130: {




   CHIP_REG_WRITE32(HBC_MessageUnit, 0, inbound_doorbell, ARCMSR_HBCMU_DRV2IOP_DATA_WRITE_OK);
  }
  break;
 case 129: {




   CHIP_REG_WRITE32(HBD_MessageUnit, 0, inbound_doorbell, ARCMSR_HBDMU_DRV2IOP_DATA_IN_READY);
  }
  break;
 case 128: {




   acb->out_doorbell ^= ARCMSR_HBEMU_DRV2IOP_DATA_WRITE_OK;
   CHIP_REG_WRITE32(HBE_MessageUnit, 0, iobound_doorbell, acb->out_doorbell);
  }
  break;
 }
}
