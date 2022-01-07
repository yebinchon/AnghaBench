
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct AdapterControlBlock {int in_doorbell; } ;


 int ARCMSR_HBEMU_IOP2DRV_MESSAGE_CMD_DONE ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int ) ;
 int FALSE ;
 int HBE_MessageUnit ;
 int TRUE ;
 int UDELAY (int) ;
 int host_int_status ;
 int iobound_doorbell ;

__attribute__((used)) static u_int8_t arcmsr_hbe_wait_msgint_ready(struct AdapterControlBlock *acb)
{
 u_int32_t Index, read_doorbell;
 u_int8_t Retries = 0x00;

 do {
  for(Index=0; Index < 100; Index++) {
   read_doorbell = CHIP_REG_READ32(HBE_MessageUnit, 0, iobound_doorbell);
   if((read_doorbell ^ acb->in_doorbell) & ARCMSR_HBEMU_IOP2DRV_MESSAGE_CMD_DONE) {
    CHIP_REG_WRITE32(HBE_MessageUnit, 0, host_int_status, 0);
    acb->in_doorbell = read_doorbell;
    return TRUE;
   }
   UDELAY(10000);
  }
 }while(Retries++ < 20);
 return (FALSE);
}
