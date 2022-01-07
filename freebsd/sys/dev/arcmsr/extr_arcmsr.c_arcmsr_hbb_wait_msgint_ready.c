
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct HBB_MessageUnit {int drv2iop_doorbell; int iop2drv_doorbell; } ;
struct AdapterControlBlock {scalar_t__ pmu; } ;


 int ARCMSR_DRV2IOP_END_OF_INTERRUPT ;
 int ARCMSR_IOP2DRV_MESSAGE_CMD_DONE ;
 int ARCMSR_MESSAGE_INT_CLEAR_PATTERN ;
 int FALSE ;
 int READ_CHIP_REG32 (int ,int ) ;
 int TRUE ;
 int UDELAY (int) ;
 int WRITE_CHIP_REG32 (int ,int ,int ) ;

__attribute__((used)) static u_int8_t arcmsr_hbb_wait_msgint_ready(struct AdapterControlBlock *acb)
{
 u_int32_t Index;
 u_int8_t Retries = 0x00;
 struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;

 do {
  for(Index=0; Index < 100; Index++) {
   if(READ_CHIP_REG32(0, phbbmu->iop2drv_doorbell) & ARCMSR_IOP2DRV_MESSAGE_CMD_DONE) {
    WRITE_CHIP_REG32(0, phbbmu->iop2drv_doorbell, ARCMSR_MESSAGE_INT_CLEAR_PATTERN);
    WRITE_CHIP_REG32(0, phbbmu->drv2iop_doorbell, ARCMSR_DRV2IOP_END_OF_INTERRUPT);
    return TRUE;
   }
   UDELAY(10000);
  }
 }while(Retries++ < 20);
 return (FALSE);
}
