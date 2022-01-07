
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct scb {scalar_t__ hscb; } ;
struct hardware_scb {int dummy; } ;
struct ahd_softc {int flags; } ;
typedef int ahd_mode_state ;


 int AHD_CORRECTABLE_ERROR (struct ahd_softc*) ;
 int AHD_MODE_CCHAN ;
 int AHD_MODE_SCSI ;
 int AHD_UPDATE_PEND_CMDS ;
 int ARRDONE ;
 int CCARREN ;
 scalar_t__ CCSCBCTL ;
 int CCSCBDIR ;
 int CCSCBDONE ;
 int CCSCBEN ;
 int COMPLETE_DMA_SCB_HEAD ;
 int COMPLETE_DMA_SCB_TAIL ;
 int COMPLETE_ON_QFREEZE_HEAD ;
 int COMPLETE_SCB_HEAD ;
 int GSFIFO ;
 int LQIGSAVAIL ;
 scalar_t__ LQISTAT2 ;
 scalar_t__ SCBID_IS_NULL (int) ;
 scalar_t__ SCB_BASE ;
 int SCB_LIST_NULL ;
 int SCB_NEXT_COMPLETE ;
 scalar_t__ SCB_RESIDUAL_SGPTR ;
 scalar_t__ SCB_SCSI_STATUS ;
 scalar_t__ SCB_SGPTR ;
 int SCB_TAG ;
 int SG_FULL_RESID ;
 int SG_LIST_NULL ;
 int SG_STATUS_VALID ;
 int ahd_complete_scb (struct ahd_softc*,struct scb*) ;
 int ahd_get_scbptr (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,scalar_t__) ;
 int ahd_inb_scbram (struct ahd_softc*,scalar_t__) ;
 int ahd_inw (struct ahd_softc*,int ) ;
 int ahd_inw_scbram (struct ahd_softc*,int ) ;
 struct scb* ahd_lookup_scb (struct ahd_softc*,int) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,scalar_t__,int) ;
 int ahd_outw (struct ahd_softc*,int ,int) ;
 int ahd_restore_modes (struct ahd_softc*,int ) ;
 int ahd_run_data_fifo (struct ahd_softc*,struct scb*) ;
 int ahd_run_qoutfifo (struct ahd_softc*) ;
 int ahd_save_modes (struct ahd_softc*) ;
 scalar_t__ ahd_scb_active_in_fifo (struct ahd_softc*,struct scb*) ;
 int ahd_set_modes (struct ahd_softc*,int,int) ;
 int ahd_set_scbptr (struct ahd_softc*,int) ;
 int aic_delay (int) ;
 int printf (char*,char*,int) ;

void
ahd_flush_qoutfifo(struct ahd_softc *ahd)
{
 struct scb *scb;
 ahd_mode_state saved_modes;
 u_int saved_scbptr;
 u_int ccscbctl;
 u_int scbid;
 u_int next_scbid;

 saved_modes = ahd_save_modes(ahd);




 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
 saved_scbptr = ahd_get_scbptr(ahd);
 while ((ahd_inb(ahd, LQISTAT2) & LQIGSAVAIL) != 0) {
  u_int fifo_mode;
  u_int i;

  scbid = ahd_inw(ahd, GSFIFO);
  scb = ahd_lookup_scb(ahd, scbid);
  if (scb == ((void*)0)) {
   printf("%s: Warning - GSFIFO SCB %d invalid\n",
          ahd_name(ahd), scbid);
   AHD_CORRECTABLE_ERROR(ahd);
   continue;
  }





  fifo_mode = 0;
rescan_fifos:
  for (i = 0; i < 2; i++) {

   fifo_mode ^= 1;
   ahd_set_modes(ahd, fifo_mode, fifo_mode);

   if (ahd_scb_active_in_fifo(ahd, scb) == 0)
    continue;

   ahd_run_data_fifo(ahd, scb);
   aic_delay(200);
   goto rescan_fifos;
  }
  ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
  ahd_set_scbptr(ahd, scbid);
  if ((ahd_inb_scbram(ahd, SCB_SGPTR) & SG_LIST_NULL) == 0
   && ((ahd_inb_scbram(ahd, SCB_SGPTR) & SG_FULL_RESID) != 0
    || (ahd_inb_scbram(ahd, SCB_RESIDUAL_SGPTR)
        & SG_LIST_NULL) != 0)) {
   u_int comp_head;







   ahd_outb(ahd, SCB_SCSI_STATUS, 0);
   ahd_outb(ahd, SCB_SGPTR,
     ahd_inb_scbram(ahd, SCB_SGPTR)
     | SG_STATUS_VALID);
   ahd_outw(ahd, SCB_TAG, scbid);
   ahd_outw(ahd, SCB_NEXT_COMPLETE, SCB_LIST_NULL);
   comp_head = ahd_inw(ahd, COMPLETE_DMA_SCB_HEAD);
   if (SCBID_IS_NULL(comp_head)) {
    ahd_outw(ahd, COMPLETE_DMA_SCB_HEAD, scbid);
    ahd_outw(ahd, COMPLETE_DMA_SCB_TAIL, scbid);
   } else {
    u_int tail;

    tail = ahd_inw(ahd, COMPLETE_DMA_SCB_TAIL);
    ahd_set_scbptr(ahd, tail);
    ahd_outw(ahd, SCB_NEXT_COMPLETE, scbid);
    ahd_outw(ahd, COMPLETE_DMA_SCB_TAIL, scbid);
    ahd_set_scbptr(ahd, scbid);
   }
  } else
   ahd_complete_scb(ahd, scb);
 }
 ahd_set_scbptr(ahd, saved_scbptr);




 ahd_set_modes(ahd, AHD_MODE_CCHAN, AHD_MODE_CCHAN);





 while (((ccscbctl = ahd_inb(ahd, CCSCBCTL)) & (CCARREN|CCSCBEN)) != 0) {

  if ((ccscbctl & (CCSCBDIR|CCARREN)) == (CCSCBDIR|CCARREN)) {
   if ((ccscbctl & ARRDONE) != 0)
    break;
  } else if ((ccscbctl & CCSCBDONE) != 0)
   break;
  aic_delay(200);
 }







 if ((ccscbctl & CCSCBDIR) != 0 || (ccscbctl & ARRDONE) != 0)
  ahd_outb(ahd, CCSCBCTL, ccscbctl & ~(CCARREN|CCSCBEN));





 ahd_run_qoutfifo(ahd);

 saved_scbptr = ahd_get_scbptr(ahd);




 scbid = ahd_inw(ahd, COMPLETE_DMA_SCB_HEAD);
 while (!SCBID_IS_NULL(scbid)) {
  uint8_t *hscb_ptr;
  u_int i;

  ahd_set_scbptr(ahd, scbid);
  next_scbid = ahd_inw_scbram(ahd, SCB_NEXT_COMPLETE);
  scb = ahd_lookup_scb(ahd, scbid);
  if (scb == ((void*)0)) {
   printf("%s: Warning - DMA-up and complete "
          "SCB %d invalid\n", ahd_name(ahd), scbid);
   AHD_CORRECTABLE_ERROR(ahd);
   continue;
  }
  hscb_ptr = (uint8_t *)scb->hscb;
  for (i = 0; i < sizeof(struct hardware_scb); i++)
   *hscb_ptr++ = ahd_inb_scbram(ahd, SCB_BASE + i);

  ahd_complete_scb(ahd, scb);
  scbid = next_scbid;
 }
 ahd_outw(ahd, COMPLETE_DMA_SCB_HEAD, SCB_LIST_NULL);
 ahd_outw(ahd, COMPLETE_DMA_SCB_TAIL, SCB_LIST_NULL);

 scbid = ahd_inw(ahd, COMPLETE_ON_QFREEZE_HEAD);
 while (!SCBID_IS_NULL(scbid)) {

  ahd_set_scbptr(ahd, scbid);
  next_scbid = ahd_inw_scbram(ahd, SCB_NEXT_COMPLETE);
  scb = ahd_lookup_scb(ahd, scbid);
  if (scb == ((void*)0)) {
   printf("%s: Warning - Complete Qfrz SCB %d invalid\n",
          ahd_name(ahd), scbid);
   AHD_CORRECTABLE_ERROR(ahd);
   continue;
  }

  ahd_complete_scb(ahd, scb);
  scbid = next_scbid;
 }
 ahd_outw(ahd, COMPLETE_ON_QFREEZE_HEAD, SCB_LIST_NULL);

 scbid = ahd_inw(ahd, COMPLETE_SCB_HEAD);
 while (!SCBID_IS_NULL(scbid)) {

  ahd_set_scbptr(ahd, scbid);
  next_scbid = ahd_inw_scbram(ahd, SCB_NEXT_COMPLETE);
  scb = ahd_lookup_scb(ahd, scbid);
  if (scb == ((void*)0)) {
   printf("%s: Warning - Complete SCB %d invalid\n",
          ahd_name(ahd), scbid);
   AHD_CORRECTABLE_ERROR(ahd);
   continue;
  }

  ahd_complete_scb(ahd, scb);
  scbid = next_scbid;
 }
 ahd_outw(ahd, COMPLETE_SCB_HEAD, SCB_LIST_NULL);




 ahd_set_scbptr(ahd, saved_scbptr);
 ahd_restore_modes(ahd, saved_modes);
 ahd->flags |= AHD_UPDATE_PEND_CMDS;
}
