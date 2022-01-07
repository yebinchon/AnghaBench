
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HBB_MessageUnit {int drv2iop_doorbell; } ;
struct AdapterControlBlock {int pci_unit; scalar_t__ pmu; } ;


 int ARCMSR_MESSAGE_ABORT_CMD ;
 int WRITE_CHIP_REG32 (int ,int ,int ) ;
 int arcmsr_hbb_wait_msgint_ready (struct AdapterControlBlock*) ;
 int printf (char*,int) ;

__attribute__((used)) static void arcmsr_abort_hbb_allcmd(struct AdapterControlBlock *acb)
{
 struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;
 WRITE_CHIP_REG32(0, phbbmu->drv2iop_doorbell, ARCMSR_MESSAGE_ABORT_CMD);
 if(!arcmsr_hbb_wait_msgint_ready(acb)) {
  printf("arcmsr%d: wait 'abort all outstanding command' timeout \n", acb->pci_unit);
 }
}
