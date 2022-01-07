
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct AdapterControlBlock {int dummy; } ;


 int ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE_DOORBELL_CLEAR ;
 scalar_t__ ARCMSR_SIGNATURE_GET_CONFIG ;
 scalar_t__ CHIP_REG_READ32 (int ,int ,int ) ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int ) ;
 int HBC_MessageUnit ;
 int arcmsr_dr_handle (struct AdapterControlBlock*) ;
 int * msgcode_rwbuffer ;
 int outbound_doorbell_clear ;

__attribute__((used)) static void arcmsr_hbc_message_isr(struct AdapterControlBlock *acb) {
 u_int32_t outbound_message;

 CHIP_REG_WRITE32(HBC_MessageUnit, 0, outbound_doorbell_clear, ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE_DOORBELL_CLEAR);
 outbound_message = CHIP_REG_READ32(HBC_MessageUnit, 0, msgcode_rwbuffer[0]);
 if (outbound_message == ARCMSR_SIGNATURE_GET_CONFIG)
  arcmsr_dr_handle( acb );
}
