
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct scb {int flags; } ;
struct ahd_softc {int bugs; } ;
struct ahd_devinfo {int dummy; } ;


 int AHD_BUSFREEREV_BUG ;
 int AHD_CLRLQO_AUTOCLR_BUG ;
 int AHD_CORRECTABLE_ERROR (struct ahd_softc*) ;
 int AHD_MODE_CFG ;
 int AHD_MODE_DFF0 ;
 int AHD_MODE_DFF1 ;
 int AHD_MODE_SCSI ;
 int AHD_SHOW_MISC ;
 int AHD_SHOW_SELTO ;
 int AHD_UNCORRECTABLE_ERROR (struct ahd_softc*) ;
 int BUSFREE ;
 int BUSFREETIME ;



 int CAM_LUN_WILDCARD ;
 int CAM_SEL_TIMEOUT ;
 int CLRBUSFREE ;
 int CLRINT ;
 int CLRIOERR ;
 int CLRLQICRCI_NLQ ;
 int CLRLQIINT1 ;
 int CLRLQOINT0 ;
 int CLRLQOINT1 ;
 int CLRSCSIINT ;
 int CLRSCSIPERR ;
 int CLRSELINGO ;
 int CLRSELTIMEO ;
 int CLRSINT0 ;
 int CLRSINT1 ;
 int CLRSINT3 ;
 int ENAB40 ;
 int ENBUSFREE ;
 int ENSELO ;
 int FALSE ;
 int IOERR ;
 int LASTPHASE ;
 int LQICRCI_NLQ ;
 int LQIPHASE_LQ ;
 int LQIPHASE_NLQ ;
 int LQISTAT1 ;
 int LQOBUSFREE ;
 int LQOSTAT0 ;
 int LQOSTAT1 ;
 int NOT_IDENTIFIED ;
 int NTRAMPERR ;
 int OSRAMPERR ;
 int OVERRUN ;
 int P_BUSFREE ;
 int SBLKCTL ;
 int SCB_PACKETIZED ;
 int SCSIPERR ;
 int SCSIRSTI ;
 int SCSISEQ0 ;
 int SELDI ;
 int SELDO ;
 int SELTO ;
 int SEQ_FLAGS ;
 int SIMODE0 ;
 int SIMODE1 ;
 int SSTAT0 ;
 int SSTAT1 ;
 int SSTAT2 ;
 int SSTAT3 ;
 int TRUE ;
 int WAITING_TID_HEAD ;
 int ahd_clear_critical_section (struct ahd_softc*) ;
 int ahd_clear_fifo (struct ahd_softc*,int) ;
 int ahd_clear_intstat (struct ahd_softc*) ;
 int ahd_clear_msg_state (struct ahd_softc*) ;
 int ahd_debug ;
 int ahd_dump_card_state (struct ahd_softc*) ;
 int ahd_freeze_devq (struct ahd_softc*,struct scb*) ;
 int ahd_get_scbptr (struct ahd_softc*) ;
 int ahd_handle_devreset (struct ahd_softc*,struct ahd_devinfo*,int ,int ,char*,int) ;
 int ahd_handle_lqiphase_error (struct ahd_softc*,int) ;
 int ahd_handle_nonpkt_busfree (struct ahd_softc*) ;
 int ahd_handle_pkt_busfree (struct ahd_softc*,int) ;
 int ahd_handle_transmission_error (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_inw (struct ahd_softc*,int ) ;
 int ahd_iocell_first_selection (struct ahd_softc*) ;
 struct scb* ahd_lookup_scb (struct ahd_softc*,int) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_pause (struct ahd_softc*) ;
 int ahd_print_path (struct ahd_softc*,struct scb*) ;
 int ahd_reset_channel (struct ahd_softc*,char,int ) ;
 int ahd_restart (struct ahd_softc*) ;
 int ahd_scb_devinfo (struct ahd_softc*,struct ahd_devinfo*,struct scb*) ;
 int ahd_set_modes (struct ahd_softc*,int,int) ;
 int ahd_setup_iocell_workaround (struct ahd_softc*) ;
 int ahd_unpause (struct ahd_softc*) ;
 int ahd_update_modes (struct ahd_softc*) ;
 int aic_set_transaction_status (struct scb*,int ) ;
 int printf (char*,...) ;

void
ahd_handle_scsiint(struct ahd_softc *ahd, u_int intstat)
{
 struct scb *scb;
 u_int status0;
 u_int status3;
 u_int status;
 u_int lqistat1;
 u_int lqostat0;
 u_int scbid;
 u_int busfreetime;

 ahd_update_modes(ahd);
 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);

 status3 = ahd_inb(ahd, SSTAT3) & (NTRAMPERR|OSRAMPERR);
 status0 = ahd_inb(ahd, SSTAT0) & (IOERR|OVERRUN|SELDI|SELDO);
 status = ahd_inb(ahd, SSTAT1) & (SELTO|SCSIRSTI|BUSFREE|SCSIPERR);
 lqistat1 = ahd_inb(ahd, LQISTAT1);
 lqostat0 = ahd_inb(ahd, LQOSTAT0);
 busfreetime = ahd_inb(ahd, SSTAT2) & BUSFREETIME;
 if ((status0 & (SELDI|SELDO)) != 0) {
  u_int simode0;

  ahd_set_modes(ahd, AHD_MODE_CFG, AHD_MODE_CFG);
  simode0 = ahd_inb(ahd, SIMODE0);
  status0 &= simode0 & (IOERR|OVERRUN|SELDI|SELDO);
  ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
 }
 scbid = ahd_get_scbptr(ahd);
 scb = ahd_lookup_scb(ahd, scbid);
 if (scb != ((void*)0)
  && (ahd_inb(ahd, SEQ_FLAGS) & NOT_IDENTIFIED) != 0)
  scb = ((void*)0);

 if ((status0 & IOERR) != 0) {
  u_int now_lvd;

  now_lvd = ahd_inb(ahd, SBLKCTL) & ENAB40;
  printf("%s: Transceiver State Has Changed to %s mode\n",
         ahd_name(ahd), now_lvd ? "LVD" : "SE");
  ahd_outb(ahd, CLRSINT0, CLRIOERR);



  ahd_reset_channel(ahd, 'A', TRUE);
  ahd_pause(ahd);
  ahd_setup_iocell_workaround(ahd);
  ahd_unpause(ahd);
 } else if ((status0 & OVERRUN) != 0) {

  printf("%s: SCSI offset overrun detected.  Resetting bus.\n",
         ahd_name(ahd));
  AHD_CORRECTABLE_ERROR(ahd);
  ahd_reset_channel(ahd, 'A', TRUE);
 } else if ((status & SCSIRSTI) != 0) {

  printf("%s: Someone reset channel A\n", ahd_name(ahd));
  ahd_reset_channel(ahd, 'A', FALSE);
  AHD_UNCORRECTABLE_ERROR(ahd);
 } else if ((status & SCSIPERR) != 0) {


  ahd_clear_critical_section(ahd);

  ahd_handle_transmission_error(ahd);
 } else if (lqostat0 != 0) {

  printf("%s: lqostat0 == 0x%x!\n", ahd_name(ahd), lqostat0);
  ahd_outb(ahd, CLRLQOINT0, lqostat0);
  if ((ahd->bugs & AHD_CLRLQO_AUTOCLR_BUG) != 0)
   ahd_outb(ahd, CLRLQOINT1, 0);
 } else if ((status & SELTO) != 0) {
  u_int scbid;


  ahd_outb(ahd, SCSISEQ0, 0);


  ahd_clear_critical_section(ahd);


  ahd_clear_msg_state(ahd);


  ahd_outb(ahd, CLRSINT1, CLRSELTIMEO|CLRBUSFREE|CLRSCSIPERR);
  ahd_outb(ahd, CLRSINT0, CLRSELINGO);

  scbid = ahd_inw(ahd, WAITING_TID_HEAD);
  scb = ahd_lookup_scb(ahd, scbid);
  if (scb == ((void*)0)) {
   printf("%s: ahd_intr - referenced scb not "
          "valid during SELTO scb(0x%x)\n",
          ahd_name(ahd), scbid);
   ahd_dump_card_state(ahd);
   AHD_UNCORRECTABLE_ERROR(ahd);
  } else {
   struct ahd_devinfo devinfo;







   ahd_scb_devinfo(ahd, &devinfo, scb);
   aic_set_transaction_status(scb, CAM_SEL_TIMEOUT);
   ahd_freeze_devq(ahd, scb);







   ahd_handle_devreset(ahd, &devinfo,
         CAM_LUN_WILDCARD,
         CAM_SEL_TIMEOUT,
         "Selection Timeout",
                          1);
  }
  ahd_outb(ahd, CLRINT, CLRSCSIINT);
  ahd_iocell_first_selection(ahd);
  ahd_unpause(ahd);
 } else if ((status0 & (SELDI|SELDO)) != 0) {

  ahd_iocell_first_selection(ahd);
  ahd_unpause(ahd);
 } else if (status3 != 0) {
  printf("%s: SCSI Cell parity error SSTAT3 == 0x%x\n",
         ahd_name(ahd), status3);
  AHD_CORRECTABLE_ERROR(ahd);
  ahd_outb(ahd, CLRSINT3, status3);
 } else if ((lqistat1 & (LQIPHASE_LQ|LQIPHASE_NLQ)) != 0) {


  ahd_clear_critical_section(ahd);

  ahd_handle_lqiphase_error(ahd, lqistat1);
 } else if ((lqistat1 & LQICRCI_NLQ) != 0) {






  ahd_outb(ahd, CLRLQIINT1, CLRLQICRCI_NLQ);
 } else if ((status & BUSFREE) != 0
  || (lqistat1 & LQOBUSFREE) != 0) {
  u_int lqostat1;
  int restart;
  int clear_fifo;
  int packetized;
  u_int mode;







  ahd_outb(ahd, SCSISEQ0, 0);


  ahd_clear_critical_section(ahd);





  mode = AHD_MODE_SCSI;
  busfreetime = ahd_inb(ahd, SSTAT2) & BUSFREETIME;
  lqostat1 = ahd_inb(ahd, LQOSTAT1);
  switch (busfreetime) {
  case 130:
  case 129:
  {
   u_int scbid;
   struct scb *scb;

   mode = busfreetime == 130
        ? AHD_MODE_DFF0 : AHD_MODE_DFF1;
   ahd_set_modes(ahd, mode, mode);
   scbid = ahd_get_scbptr(ahd);
   scb = ahd_lookup_scb(ahd, scbid);
   if (scb == ((void*)0)) {
    printf("%s: Invalid SCB %d in DFF%d "
           "during unexpected busfree\n",
           ahd_name(ahd), scbid, mode);
    packetized = 0;
    AHD_CORRECTABLE_ERROR(ahd);
   } else
    packetized = (scb->flags & SCB_PACKETIZED) != 0;
   clear_fifo = 1;
   break;
  }
  case 128:
   clear_fifo = 0;
   packetized = 1;
   break;
  default:
   clear_fifo = 0;
   packetized = (lqostat1 & LQOBUSFREE) != 0;
   if (!packetized
    && ahd_inb(ahd, LASTPHASE) == P_BUSFREE
    && (ahd_inb(ahd, SSTAT0) & SELDI) == 0
    && ((ahd_inb(ahd, SSTAT0) & SELDO) == 0
     || (ahd_inb(ahd, SCSISEQ0) & ENSELO) == 0))






    packetized = 1;
   break;
  }
  if (packetized && ahd_inb(ahd, LASTPHASE) == P_BUSFREE) {
   restart = ahd_handle_pkt_busfree(ahd, busfreetime);
  } else {
   packetized = 0;
   restart = ahd_handle_nonpkt_busfree(ahd);
  }
  ahd_outb(ahd, CLRSINT1, CLRBUSFREE);
  if (packetized == 0
   && (ahd->bugs & AHD_BUSFREEREV_BUG) != 0)
   ahd_outb(ahd, SIMODE1,
     ahd_inb(ahd, SIMODE1) & ~ENBUSFREE);

  if (clear_fifo)
   ahd_clear_fifo(ahd, mode);

  ahd_clear_msg_state(ahd);
  ahd_outb(ahd, CLRINT, CLRSCSIINT);
  if (restart) {
   ahd_restart(ahd);
  } else {
   ahd_unpause(ahd);
  }
 } else {
  printf("%s: Missing case in ahd_handle_scsiint. status = %x\n",
         ahd_name(ahd), status);
  ahd_dump_card_state(ahd);
  ahd_clear_intstat(ahd);
  ahd_unpause(ahd);
 }
}
