
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HBB_MessageUnit {int drv2iop_doorbell; } ;
struct AdapterControlBlock {scalar_t__ adapter_type; int pci_unit; scalar_t__ pmu; } ;


 scalar_t__ ACB_ADAPTER_TYPE_B ;
 int ARCMSR_MESSAGE_ACTIVE_EOI_MODE ;
 int WRITE_CHIP_REG32 (int ,int ,int ) ;
 int arcmsr_hbb_wait_msgint_ready (struct AdapterControlBlock*) ;
 int printf (char*,int) ;

__attribute__((used)) static void arcmsr_enable_eoi_mode(struct AdapterControlBlock *acb)
{
 if (acb->adapter_type == ACB_ADAPTER_TYPE_B)
 {
  struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;
  WRITE_CHIP_REG32(0, phbbmu->drv2iop_doorbell, ARCMSR_MESSAGE_ACTIVE_EOI_MODE);
  if(!arcmsr_hbb_wait_msgint_ready(acb)) {
   printf( "arcmsr%d: 'iop enable eoi mode' timeout \n", acb->pci_unit);
   return;
  }
 }
}
