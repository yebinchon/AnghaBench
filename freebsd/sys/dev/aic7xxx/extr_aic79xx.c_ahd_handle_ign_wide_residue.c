
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int ;
struct scb {struct ahd_dma_seg* sg_list; } ;
struct ahd_softc {int flags; } ;
struct ahd_dma_seg {int addr; int len; } ;
struct ahd_dma64_seg {int addr; int len; } ;
struct ahd_devinfo {int dummy; } ;


 int AHD_64BIT_ADDRESSING ;
 int AHD_SG_LEN_MASK ;
 scalar_t__ CAM_DIR_IN ;
 int DPHASE ;
 int SCB_RESIDUAL_DATACNT ;
 int SCB_RESIDUAL_SGPTR ;
 int SCB_TASK_ATTRIBUTE ;
 int SCB_XFERLEN_ODD ;
 int SEQ_FLAGS ;
 int SG_LIST_NULL ;
 int SG_PTR_MASK ;
 int SHADDR ;
 int ahd_get_scbptr (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_inb_scbram (struct ahd_softc*,int ) ;
 int ahd_inl_scbram (struct ahd_softc*,int ) ;
 int ahd_inq (struct ahd_softc*,int ) ;
 struct scb* ahd_lookup_scb (struct ahd_softc*,int ) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_outl (struct ahd_softc*,int ,int) ;
 struct ahd_dma_seg* ahd_sg_bus_to_virt (struct ahd_softc*,struct scb*,int) ;
 int ahd_sg_virt_to_bus (struct ahd_softc*,struct scb*,struct ahd_dma_seg*) ;
 scalar_t__ aic_get_transfer_dir (struct scb*) ;
 int aic_le32toh (int ) ;
 int aic_le64toh (int ) ;

__attribute__((used)) static void
ahd_handle_ign_wide_residue(struct ahd_softc *ahd, struct ahd_devinfo *devinfo)
{
 u_int scb_index;
 struct scb *scb;

 scb_index = ahd_get_scbptr(ahd);
 scb = ahd_lookup_scb(ahd, scb_index);




 if ((ahd_inb(ahd, SEQ_FLAGS) & DPHASE) == 0
  || aic_get_transfer_dir(scb) != CAM_DIR_IN) {




 } else {







  uint32_t sgptr;

  sgptr = ahd_inb_scbram(ahd, SCB_RESIDUAL_SGPTR);
  if ((sgptr & SG_LIST_NULL) != 0
   && (ahd_inb_scbram(ahd, SCB_TASK_ATTRIBUTE)
       & SCB_XFERLEN_ODD) != 0) {






  } else {
   uint32_t data_cnt;
   uint64_t data_addr;
   uint32_t sglen;


   sgptr = ahd_inl_scbram(ahd, SCB_RESIDUAL_SGPTR);
   data_cnt = ahd_inl_scbram(ahd, SCB_RESIDUAL_DATACNT);
   if ((sgptr & SG_LIST_NULL) != 0) {





    data_cnt &= ~AHD_SG_LEN_MASK;
   }
   data_addr = ahd_inq(ahd, SHADDR);
   data_cnt += 1;
   data_addr -= 1;
   sgptr &= SG_PTR_MASK;
   if ((ahd->flags & AHD_64BIT_ADDRESSING) != 0) {
    struct ahd_dma64_seg *sg;

    sg = ahd_sg_bus_to_virt(ahd, scb, sgptr);





    sg--;
    sglen = aic_le32toh(sg->len) & AHD_SG_LEN_MASK;
    if (sg != scb->sg_list
     && sglen < (data_cnt & AHD_SG_LEN_MASK)) {

     sg--;
     sglen = aic_le32toh(sg->len);




     data_cnt = 1|(sglen&(~AHD_SG_LEN_MASK));
     data_addr = aic_le64toh(sg->addr)
        + (sglen & AHD_SG_LEN_MASK)
        - 1;





     sg++;
     sgptr = ahd_sg_virt_to_bus(ahd, scb,
           sg);
    }
   } else {
    struct ahd_dma_seg *sg;

    sg = ahd_sg_bus_to_virt(ahd, scb, sgptr);





    sg--;
    sglen = aic_le32toh(sg->len) & AHD_SG_LEN_MASK;
    if (sg != scb->sg_list
     && sglen < (data_cnt & AHD_SG_LEN_MASK)) {

     sg--;
     sglen = aic_le32toh(sg->len);




     data_cnt = 1|(sglen&(~AHD_SG_LEN_MASK));
     data_addr = aic_le32toh(sg->addr)
        + (sglen & AHD_SG_LEN_MASK)
        - 1;





     sg++;
     sgptr = ahd_sg_virt_to_bus(ahd, scb,
          sg);
    }
   }






   ahd_outb(ahd, SCB_TASK_ATTRIBUTE,
       ahd_inb_scbram(ahd, SCB_TASK_ATTRIBUTE)
       ^ SCB_XFERLEN_ODD);

   ahd_outl(ahd, SCB_RESIDUAL_SGPTR, sgptr);
   ahd_outl(ahd, SCB_RESIDUAL_DATACNT, data_cnt);




  }
 }
}
