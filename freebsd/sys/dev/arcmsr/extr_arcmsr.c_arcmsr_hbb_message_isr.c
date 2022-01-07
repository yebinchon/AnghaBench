
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct HBB_MessageUnit {int iop2drv_doorbell; } ;
struct AdapterControlBlock {scalar_t__ pmu; } ;


 int ARCMSR_MESSAGE_INT_CLEAR_PATTERN ;
 scalar_t__ ARCMSR_SIGNATURE_GET_CONFIG ;
 scalar_t__ CHIP_REG_READ32 (int ,int,int ) ;
 int HBB_RWBUFFER ;
 int WRITE_CHIP_REG32 (int ,int ,int ) ;
 int arcmsr_dr_handle (struct AdapterControlBlock*) ;
 int * msgcode_rwbuffer ;

__attribute__((used)) static void arcmsr_hbb_message_isr(struct AdapterControlBlock *acb) {
 u_int32_t outbound_message;
 struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;


 WRITE_CHIP_REG32(0, phbbmu->iop2drv_doorbell, ARCMSR_MESSAGE_INT_CLEAR_PATTERN);
 outbound_message = CHIP_REG_READ32(HBB_RWBUFFER, 1, msgcode_rwbuffer[0]);
 if (outbound_message == ARCMSR_SIGNATURE_GET_CONFIG)
  arcmsr_dr_handle( acb );
}
