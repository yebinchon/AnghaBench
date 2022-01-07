
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int dummy; } ;


 int ARCMSR_HBCMU_DRV2IOP_MESSAGE_CMD_DONE ;
 int ARCMSR_INBOUND_MESG0_FLUSH_CACHE ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int ) ;
 int HBC_MessageUnit ;
 scalar_t__ arcmsr_hbc_wait_msgint_ready (struct AdapterControlBlock*) ;
 int inbound_doorbell ;
 int inbound_msgaddr0 ;

__attribute__((used)) static void arcmsr_flush_hbc_cache(struct AdapterControlBlock *acb)
{
 int retry_count = 30;

 CHIP_REG_WRITE32(HBC_MessageUnit, 0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_FLUSH_CACHE);
 CHIP_REG_WRITE32(HBC_MessageUnit, 0, inbound_doorbell, ARCMSR_HBCMU_DRV2IOP_MESSAGE_CMD_DONE);
 do {
  if(arcmsr_hbc_wait_msgint_ready(acb)) {
   break;
  } else {
   retry_count--;
  }
 }while(retry_count != 0);
}
