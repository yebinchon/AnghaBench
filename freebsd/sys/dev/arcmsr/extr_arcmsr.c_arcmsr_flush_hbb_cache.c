
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HBB_MessageUnit {int drv2iop_doorbell; } ;
struct AdapterControlBlock {scalar_t__ pmu; } ;


 int ARCMSR_MESSAGE_FLUSH_CACHE ;
 int WRITE_CHIP_REG32 (int ,int ,int ) ;
 scalar_t__ arcmsr_hbb_wait_msgint_ready (struct AdapterControlBlock*) ;

__attribute__((used)) static void arcmsr_flush_hbb_cache(struct AdapterControlBlock *acb)
{
 int retry_count = 30;
 struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;

 WRITE_CHIP_REG32(0, phbbmu->drv2iop_doorbell, ARCMSR_MESSAGE_FLUSH_CACHE);
 do {
  if(arcmsr_hbb_wait_msgint_ready(acb)) {
   break;
  } else {
   retry_count--;
  }
 }while(retry_count != 0);
}
