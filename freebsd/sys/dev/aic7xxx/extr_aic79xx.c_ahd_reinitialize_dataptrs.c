
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int ;
struct scb {int dummy; } ;
struct ahd_softc {int flags; } ;
struct ahd_dma_seg {int len; int addr; } ;
struct ahd_dma64_seg {int len; int addr; } ;
typedef int ahd_mode_state ;


 int AHD_64BIT_ADDRESSING ;
 int AHD_ASSERT_MODES (struct ahd_softc*,int,int) ;
 int AHD_MODE_DFF0_MSK ;
 int AHD_MODE_DFF1_MSK ;
 int AHD_MODE_SCSI ;
 int AHD_SG_LEN_MASK ;
 int CLRCHN ;
 int CLRSHCNT ;
 int CURRFIFO_0 ;
 int CURRFIFO_1 ;
 scalar_t__ DFFSTAT ;
 scalar_t__ DFFSXFRCTL ;
 int FIFOFREE ;
 scalar_t__ HADDR ;
 scalar_t__ HCNT ;
 scalar_t__ MDFFSTAT ;
 int RSTCHN ;
 scalar_t__ SCB_RESIDUAL_DATACNT ;
 int SCB_RESIDUAL_SGPTR ;
 int SG_PTR_MASK ;
 int ahd_get_scbptr (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,scalar_t__) ;
 int ahd_inb_scbram (struct ahd_softc*,scalar_t__) ;
 int ahd_inl_scbram (struct ahd_softc*,int ) ;
 struct scb* ahd_lookup_scb (struct ahd_softc*,int) ;
 int ahd_outb (struct ahd_softc*,scalar_t__,int) ;
 int ahd_outl (struct ahd_softc*,scalar_t__,int) ;
 int ahd_print_path (struct ahd_softc*,struct scb*) ;
 int ahd_save_modes (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 void* ahd_sg_bus_to_virt (struct ahd_softc*,struct scb*,int) ;
 int aic_delay (int) ;
 int aic_le32toh (int ) ;
 int aic_le64toh (int ) ;
 int printf (char*) ;

__attribute__((used)) static void
ahd_reinitialize_dataptrs(struct ahd_softc *ahd)
{
 struct scb *scb;
 ahd_mode_state saved_modes;
 u_int scb_index;
 u_int wait;
 uint32_t sgptr;
 uint32_t resid;
 uint64_t dataptr;

 AHD_ASSERT_MODES(ahd, AHD_MODE_DFF0_MSK|AHD_MODE_DFF1_MSK,
    AHD_MODE_DFF0_MSK|AHD_MODE_DFF1_MSK);

 scb_index = ahd_get_scbptr(ahd);
 scb = ahd_lookup_scb(ahd, scb_index);





 ahd_outb(ahd, DFFSXFRCTL, CLRCHN);
 wait = 1000;
 while (--wait && !(ahd_inb(ahd, MDFFSTAT) & FIFOFREE))
  aic_delay(100);
 if (wait == 0) {
  ahd_print_path(ahd, scb);
  printf("ahd_reinitialize_dataptrs: Forcing FIFO free.\n");
  ahd_outb(ahd, DFFSXFRCTL, RSTCHN|CLRSHCNT);
 }
 saved_modes = ahd_save_modes(ahd);
 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
 ahd_outb(ahd, DFFSTAT,
   ahd_inb(ahd, DFFSTAT)
  | (saved_modes == 0x11 ? CURRFIFO_1 : CURRFIFO_0));





 sgptr = ahd_inl_scbram(ahd, SCB_RESIDUAL_SGPTR);
 sgptr &= SG_PTR_MASK;

 resid = (ahd_inb_scbram(ahd, SCB_RESIDUAL_DATACNT + 2) << 16)
       | (ahd_inb_scbram(ahd, SCB_RESIDUAL_DATACNT + 1) << 8)
       | ahd_inb_scbram(ahd, SCB_RESIDUAL_DATACNT);

 if ((ahd->flags & AHD_64BIT_ADDRESSING) != 0) {
  struct ahd_dma64_seg *sg;

  sg = ahd_sg_bus_to_virt(ahd, scb, sgptr);


  sg--;

  dataptr = aic_le64toh(sg->addr)
   + (aic_le32toh(sg->len) & AHD_SG_LEN_MASK)
   - resid;
  ahd_outl(ahd, HADDR + 4, dataptr >> 32);
 } else {
  struct ahd_dma_seg *sg;

  sg = ahd_sg_bus_to_virt(ahd, scb, sgptr);


  sg--;

  dataptr = aic_le32toh(sg->addr)
   + (aic_le32toh(sg->len) & AHD_SG_LEN_MASK)
   - resid;
  ahd_outb(ahd, HADDR + 4,
    (aic_le32toh(sg->len) & ~AHD_SG_LEN_MASK) >> 24);
 }
 ahd_outl(ahd, HADDR, dataptr);
 ahd_outb(ahd, HCNT + 2, resid >> 16);
 ahd_outb(ahd, HCNT + 1, resid >> 8);
 ahd_outb(ahd, HCNT, resid);
}
