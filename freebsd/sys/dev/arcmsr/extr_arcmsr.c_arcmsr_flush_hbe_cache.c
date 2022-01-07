
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int out_doorbell; } ;


 int ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE ;
 int ARCMSR_INBOUND_MESG0_FLUSH_CACHE ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int ) ;
 int HBE_MessageUnit ;
 scalar_t__ arcmsr_hbe_wait_msgint_ready (struct AdapterControlBlock*) ;
 int inbound_msgaddr0 ;
 int iobound_doorbell ;

__attribute__((used)) static void arcmsr_flush_hbe_cache(struct AdapterControlBlock *acb)
{
 int retry_count = 30;

 CHIP_REG_WRITE32(HBE_MessageUnit, 0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_FLUSH_CACHE);
 acb->out_doorbell ^= ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE;
 CHIP_REG_WRITE32(HBE_MessageUnit, 0, iobound_doorbell, acb->out_doorbell);
 do {
  if(arcmsr_hbe_wait_msgint_ready(acb)) {
   break;
  } else {
   retry_count--;
  }
 }while(retry_count != 0);
}
