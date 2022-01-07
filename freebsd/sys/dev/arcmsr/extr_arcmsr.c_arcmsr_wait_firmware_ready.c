
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HBB_MessageUnit {int drv2iop_doorbell; int iop2drv_doorbell; } ;
struct AdapterControlBlock {int adapter_type; int pci_unit; scalar_t__ pmu; } ;







 int ARCMSR_DRV2IOP_END_OF_INTERRUPT ;
 int ARCMSR_HBCMU_MESSAGE_FIRMWARE_OK ;
 int ARCMSR_HBDMU_MESSAGE_FIRMWARE_OK ;
 int ARCMSR_HBEMU_MESSAGE_FIRMWARE_OK ;
 int ARCMSR_MESSAGE_FIRMWARE_OK ;
 int ARCMSR_OUTBOUND_MESG1_FIRMWARE_OK ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int HBA_MessageUnit ;
 int HBC_MessageUnit ;
 int HBD_MessageUnit ;
 int HBE_MessageUnit ;
 int READ_CHIP_REG32 (int ,int ) ;
 int UDELAY (int) ;
 int WRITE_CHIP_REG32 (int ,int ,int ) ;
 int outbound_msgaddr1 ;
 int printf (char*,int) ;

__attribute__((used)) static void arcmsr_wait_firmware_ready( struct AdapterControlBlock *acb)
{
 int timeout=0;

 switch (acb->adapter_type) {
 case 132: {
   while ((CHIP_REG_READ32(HBA_MessageUnit, 0, outbound_msgaddr1) & ARCMSR_OUTBOUND_MESG1_FIRMWARE_OK) == 0)
   {
    if (timeout++ > 2000)
    {
     printf( "arcmsr%d:timed out waiting for firmware \n", acb->pci_unit);
     return;
    }
    UDELAY(15000);
   }
  }
  break;
 case 131: {
   struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;
   while ((READ_CHIP_REG32(0, phbbmu->iop2drv_doorbell) & ARCMSR_MESSAGE_FIRMWARE_OK) == 0)
   {
    if (timeout++ > 2000)
    {
     printf( "arcmsr%d: timed out waiting for firmware \n", acb->pci_unit);
     return;
    }
    UDELAY(15000);
   }
   WRITE_CHIP_REG32(0, phbbmu->drv2iop_doorbell, ARCMSR_DRV2IOP_END_OF_INTERRUPT);
  }
  break;
 case 130: {
   while ((CHIP_REG_READ32(HBC_MessageUnit, 0, outbound_msgaddr1) & ARCMSR_HBCMU_MESSAGE_FIRMWARE_OK) == 0)
   {
    if (timeout++ > 2000)
    {
     printf( "arcmsr%d:timed out waiting for firmware ready\n", acb->pci_unit);
     return;
    }
    UDELAY(15000);
   }
  }
  break;
 case 129: {
   while ((CHIP_REG_READ32(HBD_MessageUnit, 0, outbound_msgaddr1) & ARCMSR_HBDMU_MESSAGE_FIRMWARE_OK) == 0)
   {
    if (timeout++ > 2000)
    {
     printf( "arcmsr%d:timed out waiting for firmware ready\n", acb->pci_unit);
     return;
    }
    UDELAY(15000);
   }
  }
  break;
 case 128: {
   while ((CHIP_REG_READ32(HBE_MessageUnit, 0, outbound_msgaddr1) & ARCMSR_HBEMU_MESSAGE_FIRMWARE_OK) == 0)
   {
    if (timeout++ > 4000)
    {
     printf( "arcmsr%d:timed out waiting for firmware ready\n", acb->pci_unit);
     return;
    }
    UDELAY(15000);
   }
  }
  break;
 }
}
