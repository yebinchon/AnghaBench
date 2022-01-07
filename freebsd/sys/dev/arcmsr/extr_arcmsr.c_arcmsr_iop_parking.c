
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct AdapterControlBlock {int acb_flags; } ;


 int ACB_F_MSG_START_BGRB ;
 int arcmsr_disable_allintr (struct AdapterControlBlock*) ;
 int arcmsr_enable_allintr (struct AdapterControlBlock*,int ) ;
 int arcmsr_flush_adapter_cache (struct AdapterControlBlock*) ;
 int arcmsr_stop_adapter_bgrb (struct AdapterControlBlock*) ;

__attribute__((used)) static void arcmsr_iop_parking(struct AdapterControlBlock *acb)
{
 u_int32_t intmask_org;

 if(acb != ((void*)0)) {

  if(acb->acb_flags & ACB_F_MSG_START_BGRB) {
   intmask_org = arcmsr_disable_allintr(acb);
   arcmsr_stop_adapter_bgrb(acb);
   arcmsr_flush_adapter_cache(acb);
   arcmsr_enable_allintr(acb, intmask_org);
  }
 }
}
