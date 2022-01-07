
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct scb {struct ahc_dma_seg* sg_list; } ;
struct ahc_softc {int dummy; } ;
struct ahc_dma_seg {int addr; int len; } ;
struct ahc_devinfo {int dummy; } ;


 int AHC_SG_LEN_MASK ;
 scalar_t__ CAM_DIR_IN ;
 int DPHASE ;
 int SCB_LUN ;
 int SCB_RESIDUAL_DATACNT ;
 int SCB_RESIDUAL_SGPTR ;
 int SCB_TAG ;
 int SCB_XFERLEN_ODD ;
 int SEQ_FLAGS ;
 int SG_LIST_NULL ;
 int SG_PTR_MASK ;
 int SHADDR ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_inl (struct ahc_softc*,int ) ;
 struct scb* ahc_lookup_scb (struct ahc_softc*,int) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int ahc_outl (struct ahc_softc*,int ,int) ;
 struct ahc_dma_seg* ahc_sg_bus_to_virt (struct scb*,int) ;
 int ahc_sg_virt_to_bus (struct scb*,struct ahc_dma_seg*) ;
 scalar_t__ aic_get_transfer_dir (struct scb*) ;
 int aic_le32toh (int ) ;

__attribute__((used)) static void
ahc_handle_ign_wide_residue(struct ahc_softc *ahc, struct ahc_devinfo *devinfo)
{
 u_int scb_index;
 struct scb *scb;

 scb_index = ahc_inb(ahc, SCB_TAG);
 scb = ahc_lookup_scb(ahc, scb_index);




 if ((ahc_inb(ahc, SEQ_FLAGS) & DPHASE) == 0
  || aic_get_transfer_dir(scb) != CAM_DIR_IN) {




 } else {







  uint32_t sgptr;

  sgptr = ahc_inb(ahc, SCB_RESIDUAL_SGPTR);
  if ((sgptr & SG_LIST_NULL) != 0
   && (ahc_inb(ahc, SCB_LUN) & SCB_XFERLEN_ODD) != 0) {






  } else {
   struct ahc_dma_seg *sg;
   uint32_t data_cnt;
   uint32_t data_addr;
   uint32_t sglen;


   sgptr = ahc_inl(ahc, SCB_RESIDUAL_SGPTR);
   data_cnt = ahc_inl(ahc, SCB_RESIDUAL_DATACNT);

   if ((sgptr & SG_LIST_NULL) != 0) {





    data_cnt &= ~AHC_SG_LEN_MASK;
   }

   data_addr = ahc_inl(ahc, SHADDR);

   data_cnt += 1;
   data_addr -= 1;
   sgptr &= SG_PTR_MASK;

   sg = ahc_sg_bus_to_virt(scb, sgptr);





   sg--;
   sglen = aic_le32toh(sg->len) & AHC_SG_LEN_MASK;
   if (sg != scb->sg_list
    && sglen < (data_cnt & AHC_SG_LEN_MASK)) {

    sg--;
    sglen = aic_le32toh(sg->len);




    data_cnt = 1 | (sglen & (~AHC_SG_LEN_MASK));
    data_addr = aic_le32toh(sg->addr)
       + (sglen & AHC_SG_LEN_MASK) - 1;





    sg++;
    sgptr = ahc_sg_virt_to_bus(scb, sg);
   }
   ahc_outl(ahc, SCB_RESIDUAL_SGPTR, sgptr);
   ahc_outl(ahc, SCB_RESIDUAL_DATACNT, data_cnt);






   ahc_outb(ahc, SCB_LUN,
     ahc_inb(ahc, SCB_LUN) ^ SCB_XFERLEN_ODD);
  }
 }
}
