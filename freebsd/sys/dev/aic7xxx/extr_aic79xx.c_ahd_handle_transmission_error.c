
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct scb {int flags; } ;
struct ahd_softc {int bugs; int send_msg_perror; } ;
struct TYPE_2__ {char* phasemsg; } ;


 int AHD_CORRECTABLE_ERROR (struct ahd_softc*) ;
 int AHD_MODE_CFG ;
 int AHD_MODE_SCSI ;
 int AHD_NLQICRC_DELAYED_BUG ;
 int AHD_SHOW_RECOVERY ;
 int AHD_UNCORRECTABLE_ERROR (struct ahd_softc*) ;
 int CLRINT ;
 int CLRLQIINT1 ;
 int CLRSCSIINT ;
 int CLRSCSIPERR ;
 int CLRSINT1 ;
 int FALSE ;
 int HOST_MSG ;
 int LASTPHASE ;
 int LQCTL2 ;
 int LQIBADLQI ;
 int LQICRCI_LQ ;
 int LQICRCI_NLQ ;
 int LQIOVERI_LQ ;
 int LQIOVERI_NLQ ;
 int LQIPHASE_LQ ;
 int LQIPHASE_NLQ ;
 int LQIRETRY ;
 int LQISTAT1 ;
 int LQISTAT2 ;
 int LQISTATE ;
 int MSG_INITIATOR_DET_ERR ;
 int MSG_OUT ;
 int MSG_PARITY_ERROR ;
 int PARITYERR ;
 int PERRDIAG ;
 int PHASE_MASK ;
 int PREVPHASE ;
 int P_DATAIN_DT ;
 int P_MESGIN ;
 scalar_t__ SCB_IS_SILENT (struct scb*) ;
 int SCB_TRANSMISSION_ERROR ;
 int SCSIDAT ;
 int SCSISIGI ;
 int TRUE ;
 int ahd_debug ;
 int ahd_dump_card_state (struct ahd_softc*) ;
 int ahd_get_scbptr (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_lastphase_print (int,int*,int) ;
 TYPE_1__* ahd_lookup_phase_entry (int) ;
 struct scb* ahd_lookup_scb (struct ahd_softc*,int) ;
 int ahd_lqistat1_print (int,int*,int) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_perrdiag_print (int,int*,int) ;
 int ahd_reset_channel (struct ahd_softc*,char,int) ;
 int ahd_scsisigi_print (int,int*,int) ;
 int ahd_set_active_fifo (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int ahd_unpause (struct ahd_softc*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ahd_handle_transmission_error(struct ahd_softc *ahd)
{
 struct scb *scb;
 u_int scbid;
 u_int lqistat1;
 u_int msg_out;
 u_int curphase;
 u_int lastphase;
 u_int perrdiag;
 u_int cur_col;
 int silent;

 scb = ((void*)0);
 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
 lqistat1 = ahd_inb(ahd, LQISTAT1) & ~(LQIPHASE_LQ|LQIPHASE_NLQ);
 ahd_inb(ahd, LQISTAT2);
 if ((lqistat1 & (LQICRCI_NLQ|LQICRCI_LQ)) == 0
  && (ahd->bugs & AHD_NLQICRC_DELAYED_BUG) != 0) {
  u_int lqistate;

  ahd_set_modes(ahd, AHD_MODE_CFG, AHD_MODE_CFG);
  lqistate = ahd_inb(ahd, LQISTATE);
  if ((lqistate >= 0x1E && lqistate <= 0x24)
   || (lqistate == 0x29)) {






   lqistat1 |= LQICRCI_NLQ;
  }
  ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
 }

 ahd_outb(ahd, CLRLQIINT1, lqistat1);
 lastphase = ahd_inb(ahd, LASTPHASE);
 curphase = ahd_inb(ahd, SCSISIGI) & PHASE_MASK;
 perrdiag = ahd_inb(ahd, PERRDIAG);
 msg_out = MSG_INITIATOR_DET_ERR;
 ahd_outb(ahd, CLRSINT1, CLRSCSIPERR);




 silent = FALSE;
 if (lqistat1 == 0
  || (lqistat1 & LQICRCI_NLQ) != 0) {
   if ((lqistat1 & (LQICRCI_NLQ|LQIOVERI_NLQ)) != 0)
   ahd_set_active_fifo(ahd);
  scbid = ahd_get_scbptr(ahd);
  scb = ahd_lookup_scb(ahd, scbid);
  if (scb != ((void*)0) && SCB_IS_SILENT(scb))
   silent = TRUE;
 }

 cur_col = 0;
 if (silent == FALSE) {
  printf("%s: Transmission error detected\n", ahd_name(ahd));
  ahd_lqistat1_print(lqistat1, &cur_col, 50);
  ahd_lastphase_print(lastphase, &cur_col, 50);
  ahd_scsisigi_print(curphase, &cur_col, 50);
  ahd_perrdiag_print(perrdiag, &cur_col, 50);
  printf("\n");
  AHD_CORRECTABLE_ERROR(ahd);
  ahd_dump_card_state(ahd);
 }

 if ((lqistat1 & (LQIOVERI_LQ|LQIOVERI_NLQ)) != 0) {
  if (silent == FALSE) {
   printf("%s: Gross protocol error during incoming "
          "packet.  lqistat1 == 0x%x.  Resetting bus.\n",
          ahd_name(ahd), lqistat1);
   AHD_UNCORRECTABLE_ERROR(ahd);
  }
  ahd_reset_channel(ahd, 'A', TRUE);
  return;
 } else if ((lqistat1 & LQICRCI_LQ) != 0) {
  ahd_outb(ahd, LQCTL2, LQIRETRY);
  printf("LQIRetry for LQICRCI_LQ to release ACK\n");
  AHD_CORRECTABLE_ERROR(ahd);
 } else if ((lqistat1 & LQICRCI_NLQ) != 0) {
  if (silent == FALSE)
   printf("LQICRC_NLQ\n");
  if (scb == ((void*)0)) {
   printf("%s: No SCB valid for LQICRC_NLQ.  "
          "Resetting bus\n", ahd_name(ahd));
   AHD_UNCORRECTABLE_ERROR(ahd);
   ahd_reset_channel(ahd, 'A', TRUE);
   return;
  }
 } else if ((lqistat1 & LQIBADLQI) != 0) {
  printf("Need to handle BADLQI!\n");
  ahd_reset_channel(ahd, 'A', TRUE);
  return;
 } else if ((perrdiag & (PARITYERR|PREVPHASE)) == PARITYERR) {
  if ((curphase & ~P_DATAIN_DT) != 0) {

   if (silent == FALSE)
    printf("Acking %s to clear perror\n",
        ahd_lookup_phase_entry(curphase)->phasemsg);
   ahd_inb(ahd, SCSIDAT);
  }

  if (curphase == P_MESGIN)
   msg_out = MSG_PARITY_ERROR;
 }
 ahd->send_msg_perror = msg_out;
 if (scb != ((void*)0) && msg_out == MSG_INITIATOR_DET_ERR)
  scb->flags |= SCB_TRANSMISSION_ERROR;
 ahd_outb(ahd, MSG_OUT, HOST_MSG);
 ahd_outb(ahd, CLRINT, CLRSCSIINT);
 ahd_unpause(ahd);
}
