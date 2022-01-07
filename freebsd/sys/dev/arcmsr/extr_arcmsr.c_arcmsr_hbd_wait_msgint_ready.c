
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct AdapterControlBlock {int dummy; } ;


 int ARCMSR_HBDMU_IOP2DRV_MESSAGE_CMD_DONE ;
 int ARCMSR_HBDMU_IOP2DRV_MESSAGE_CMD_DONE_CLEAR ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int ) ;
 int FALSE ;
 int HBD_MessageUnit ;
 int TRUE ;
 int UDELAY (int) ;
 int outbound_doorbell ;

__attribute__((used)) static u_int8_t arcmsr_hbd_wait_msgint_ready(struct AdapterControlBlock *acb)
{
 u_int32_t Index;
 u_int8_t Retries = 0x00;

 do {
  for(Index=0; Index < 100; Index++) {
   if(CHIP_REG_READ32(HBD_MessageUnit, 0, outbound_doorbell) & ARCMSR_HBDMU_IOP2DRV_MESSAGE_CMD_DONE) {
    CHIP_REG_WRITE32(HBD_MessageUnit, 0, outbound_doorbell, ARCMSR_HBDMU_IOP2DRV_MESSAGE_CMD_DONE_CLEAR);
    return TRUE;
   }
   UDELAY(10000);
  }
 }while(Retries++ < 20);
 return (FALSE);
}
