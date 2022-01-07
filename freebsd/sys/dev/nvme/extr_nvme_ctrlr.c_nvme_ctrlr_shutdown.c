
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvme_controller {int dummy; } ;


 int NVME_CC_REG_SHN_MASK ;
 int NVME_CC_REG_SHN_SHIFT ;
 scalar_t__ NVME_CSTS_GET_SHST (int) ;
 int NVME_SHN_NORMAL ;
 scalar_t__ NVME_SHST_COMPLETE ;
 int hz ;
 int nvme_mmio_read_4 (struct nvme_controller*,int) ;
 int nvme_mmio_write_4 (struct nvme_controller*,int,int) ;
 int nvme_printf (struct nvme_controller*,char*) ;
 int pause (char*,int) ;

void
nvme_ctrlr_shutdown(struct nvme_controller *ctrlr)
{
 uint32_t cc;
 uint32_t csts;
 int ticks = 0;

 cc = nvme_mmio_read_4(ctrlr, cc);
 cc &= ~(NVME_CC_REG_SHN_MASK << NVME_CC_REG_SHN_SHIFT);
 cc |= NVME_SHN_NORMAL << NVME_CC_REG_SHN_SHIFT;
 nvme_mmio_write_4(ctrlr, cc, cc);

 while (1) {
  csts = nvme_mmio_read_4(ctrlr, csts);
  if (csts == 0xffffffff)
   break;
  if (NVME_CSTS_GET_SHST(csts) == NVME_SHST_COMPLETE)
   break;
  if (ticks++ > 5*hz) {
   nvme_printf(ctrlr, "did not complete shutdown within"
       " 5 seconds of notification\n");
   break;
  }
  pause("nvme shn", 1);
 }
}
