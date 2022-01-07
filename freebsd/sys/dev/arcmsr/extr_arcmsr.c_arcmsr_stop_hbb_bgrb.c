
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HBB_MessageUnit {int drv2iop_doorbell; } ;
struct AdapterControlBlock {int pci_unit; int acb_flags; scalar_t__ pmu; } ;


 int ACB_F_MSG_START_BGRB ;
 int ARCMSR_MESSAGE_STOP_BGRB ;
 int WRITE_CHIP_REG32 (int ,int ,int ) ;
 int arcmsr_hbb_wait_msgint_ready (struct AdapterControlBlock*) ;
 int printf (char*,int) ;

__attribute__((used)) static void arcmsr_stop_hbb_bgrb(struct AdapterControlBlock *acb)
{
 struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;
 acb->acb_flags &= ~ACB_F_MSG_START_BGRB;
 WRITE_CHIP_REG32(0, phbbmu->drv2iop_doorbell, ARCMSR_MESSAGE_STOP_BGRB);
 if(!arcmsr_hbb_wait_msgint_ready(acb)) {
  printf( "arcmsr%d: wait 'stop adapter background rebulid' timeout \n"
   , acb->pci_unit);
 }
}
