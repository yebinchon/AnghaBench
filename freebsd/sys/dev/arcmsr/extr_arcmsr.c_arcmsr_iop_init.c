
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct AdapterControlBlock {int acb_flags; } ;


 int ACB_F_IOP_INITED ;
 int arcmsr_clear_doorbell_queue_buffer (struct AdapterControlBlock*) ;
 int arcmsr_disable_allintr (struct AdapterControlBlock*) ;
 int arcmsr_enable_allintr (struct AdapterControlBlock*,int ) ;
 int arcmsr_enable_eoi_mode (struct AdapterControlBlock*) ;
 int arcmsr_get_firmware_spec (struct AdapterControlBlock*) ;
 int arcmsr_iop_confirm (struct AdapterControlBlock*) ;
 int arcmsr_start_adapter_bgrb (struct AdapterControlBlock*) ;
 int arcmsr_wait_firmware_ready (struct AdapterControlBlock*) ;

__attribute__((used)) static void arcmsr_iop_init(struct AdapterControlBlock *acb)
{
 u_int32_t intmask_org;


 intmask_org = arcmsr_disable_allintr(acb);
 arcmsr_wait_firmware_ready(acb);
 arcmsr_iop_confirm(acb);
 arcmsr_get_firmware_spec(acb);

 arcmsr_start_adapter_bgrb(acb);

 arcmsr_clear_doorbell_queue_buffer(acb);
 arcmsr_enable_eoi_mode(acb);

 arcmsr_enable_allintr(acb, intmask_org);
 acb->acb_flags |= ACB_F_IOP_INITED;
}
