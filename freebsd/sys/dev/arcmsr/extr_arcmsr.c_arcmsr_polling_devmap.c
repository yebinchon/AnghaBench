
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HBB_MessageUnit {int drv2iop_doorbell; } ;
struct AdapterControlBlock {int adapter_type; int acb_flags; int devmap_callout; int out_doorbell; scalar_t__ pmu; } ;







 int ACB_F_SCSISTOPADAPTER ;
 int ARCMSR_HBCMU_DRV2IOP_MESSAGE_CMD_DONE ;
 int ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE ;
 int ARCMSR_INBOUND_MESG0_GET_CONFIG ;
 int ARCMSR_MESSAGE_GET_CONFIG ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int ) ;
 int HBA_MessageUnit ;
 int HBC_MessageUnit ;
 int HBD_MessageUnit ;
 int HBE_MessageUnit ;
 int WRITE_CHIP_REG32 (int ,int ,int ) ;
 int callout_reset (int *,int,void (*) (void*),struct AdapterControlBlock*) ;
 int hz ;
 int inbound_doorbell ;
 int inbound_msgaddr0 ;
 int iobound_doorbell ;

__attribute__((used)) static void arcmsr_polling_devmap(void *arg)
{
 struct AdapterControlBlock *acb = (struct AdapterControlBlock *)arg;
 switch (acb->adapter_type) {
 case 132:
  CHIP_REG_WRITE32(HBA_MessageUnit, 0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_GET_CONFIG);
  break;

     case 131: {
   struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;
   WRITE_CHIP_REG32(0, phbbmu->drv2iop_doorbell, ARCMSR_MESSAGE_GET_CONFIG);
  }
  break;

 case 130:
  CHIP_REG_WRITE32(HBC_MessageUnit, 0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_GET_CONFIG);
  CHIP_REG_WRITE32(HBC_MessageUnit, 0, inbound_doorbell, ARCMSR_HBCMU_DRV2IOP_MESSAGE_CMD_DONE);
  break;

 case 129:
  CHIP_REG_WRITE32(HBD_MessageUnit, 0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_GET_CONFIG);
  break;

     case 128:
  CHIP_REG_WRITE32(HBE_MessageUnit, 0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_GET_CONFIG);
  acb->out_doorbell ^= ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE;
  CHIP_REG_WRITE32(HBE_MessageUnit, 0, iobound_doorbell, acb->out_doorbell);
      break;
 }

 if((acb->acb_flags & ACB_F_SCSISTOPADAPTER) == 0)
 {
  callout_reset(&acb->devmap_callout, 5 * hz, arcmsr_polling_devmap, acb);
 }
}
