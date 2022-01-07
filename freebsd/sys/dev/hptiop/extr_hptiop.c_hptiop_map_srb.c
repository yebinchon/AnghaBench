
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int64_t ;
typedef scalar_t__ u_int32_t ;
struct hpt_iop_srb {int index; int phy_addr; int timeout; int srb_flag; struct hpt_iop_hba* hba; int dma_map; } ;
struct hpt_iop_hba {scalar_t__ ctlcfg_ptr; int pcidev; struct hpt_iop_srb** srb; int lock; int io_dmat; scalar_t__ uncached_ptr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef int bus_addr_t ;


 int HPT_SRB_FLAG_HIGH_MEM_ACESS ;
 int HPT_SRB_MAX_QUEUE_SIZE ;
 int HPT_SRB_MAX_SIZE ;
 int IOPMU_MAX_MEM_SUPPORT_MASK_32G ;
 scalar_t__ bus_dmamap_create (int ,int ,int *) ;
 int bzero (struct hpt_iop_srb*,int) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_printf (int ,char*) ;
 int hptiop_free_srb (struct hpt_iop_hba*,struct hpt_iop_srb*) ;

__attribute__((used)) static void hptiop_map_srb(void *arg, bus_dma_segment_t *segs,
    int nsegs, int error)
{
 struct hpt_iop_hba * hba = (struct hpt_iop_hba *)arg;
 bus_addr_t phy_addr = (segs->ds_addr + 0x1F) & ~(bus_addr_t)0x1F;
 struct hpt_iop_srb *srb, *tmp_srb;
 int i;

 if (error || nsegs == 0) {
  device_printf(hba->pcidev, "hptiop_map_srb error");
  return;
 }


 srb = (struct hpt_iop_srb *)
  (((unsigned long)hba->uncached_ptr + 0x1F)
  & ~(unsigned long)0x1F);

 for (i = 0; i < HPT_SRB_MAX_QUEUE_SIZE; i++) {
  tmp_srb = (struct hpt_iop_srb *)
     ((char *)srb + i * HPT_SRB_MAX_SIZE);
  if (((unsigned long)tmp_srb & 0x1F) == 0) {
   if (bus_dmamap_create(hba->io_dmat,
      0, &tmp_srb->dma_map)) {
    device_printf(hba->pcidev, "dmamap create failed");
    return;
   }

   bzero(tmp_srb, sizeof(struct hpt_iop_srb));
   tmp_srb->hba = hba;
   tmp_srb->index = i;
   if (hba->ctlcfg_ptr == 0) {
    tmp_srb->phy_addr = (u_int64_t)(u_int32_t)
       (phy_addr >> 5);
    if (phy_addr & IOPMU_MAX_MEM_SUPPORT_MASK_32G)
     tmp_srb->srb_flag =
      HPT_SRB_FLAG_HIGH_MEM_ACESS;
   } else {
    tmp_srb->phy_addr = phy_addr;
   }

   callout_init_mtx(&tmp_srb->timeout, &hba->lock, 0);
   hptiop_free_srb(hba, tmp_srb);
   hba->srb[i] = tmp_srb;
   phy_addr += HPT_SRB_MAX_SIZE;
  }
  else {
   device_printf(hba->pcidev, "invalid alignment");
   return;
  }
 }
}
