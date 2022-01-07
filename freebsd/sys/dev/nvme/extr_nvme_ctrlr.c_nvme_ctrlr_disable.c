
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct nvme_controller {int quirks; } ;


 int B4_CHK_RDY_DELAY_MS ;
 int NVME_CC_REG_EN_MASK ;
 int NVME_CC_REG_EN_SHIFT ;
 int NVME_CSTS_REG_RDY_MASK ;
 int NVME_CSTS_REG_RDY_SHIFT ;
 int QUIRK_DELAY_B4_CHK_RDY ;
 int hz ;
 int nvme_ctrlr_wait_for_ready (struct nvme_controller*,int) ;
 int nvme_mmio_read_4 (struct nvme_controller*,int) ;
 int nvme_mmio_write_4 (struct nvme_controller*,int,int) ;
 int pause (char*,int) ;

__attribute__((used)) static int
nvme_ctrlr_disable(struct nvme_controller *ctrlr)
{
 uint32_t cc;
 uint32_t csts;
 uint8_t en, rdy;
 int err;

 cc = nvme_mmio_read_4(ctrlr, cc);
 csts = nvme_mmio_read_4(ctrlr, csts);

 en = (cc >> NVME_CC_REG_EN_SHIFT) & NVME_CC_REG_EN_MASK;
 rdy = (csts >> NVME_CSTS_REG_RDY_SHIFT) & NVME_CSTS_REG_RDY_MASK;







 if (en == 1) {
  if (rdy == 0) {

   err = nvme_ctrlr_wait_for_ready(ctrlr, 1);
   if (err != 0)
    return (err);
  }
 } else {

  if (rdy == 0)
   return (0);
  else
   return (nvme_ctrlr_wait_for_ready(ctrlr, 0));
 }

 cc &= ~NVME_CC_REG_EN_MASK;
 nvme_mmio_write_4(ctrlr, cc, cc);





 if (ctrlr->quirks & QUIRK_DELAY_B4_CHK_RDY)
  pause("nvmeR", B4_CHK_RDY_DELAY_MS * hz / 1000);
 return (nvme_ctrlr_wait_for_ready(ctrlr, 0));
}
