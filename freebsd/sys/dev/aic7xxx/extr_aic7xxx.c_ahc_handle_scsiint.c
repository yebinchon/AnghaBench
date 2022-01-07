
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u_int ;
struct scb {TYPE_5__* hscb; TYPE_2__* io_ctx; int flags; } ;
struct ahc_tmode_tstate {int dummy; } ;
struct ahc_softc {int features; scalar_t__ msg_type; int send_msg_perror; scalar_t__* msgout_buf; int msgout_index; } ;
struct TYPE_10__ {int transport_version; scalar_t__ ppr_options; } ;
struct TYPE_9__ {int transport_version; } ;
struct ahc_initiator_tinfo {TYPE_4__ goal; TYPE_3__ curr; } ;
struct ahc_devinfo {int target; int our_scsiid; int channel; } ;
struct TYPE_12__ {size_t phase; size_t mesg_out; char* phasemsg; } ;
struct TYPE_11__ {size_t tag; int control; } ;
struct TYPE_7__ {scalar_t__ func_code; } ;
struct TYPE_8__ {TYPE_1__ ccb_h; } ;


 int AHCMSG_1B ;
 int AHCMSG_EXT ;
 int AHC_DT ;
 int AHC_SHOW_SELTO ;
 int AHC_TRANS_CUR ;
 int AHC_TRANS_GOAL ;
 int AHC_TWIN ;
 int AHC_ULTRA2 ;
 size_t BUSFREE ;
 int CAM_BDR_SENT ;
 size_t CAM_LUN_WILDCARD ;
 int CAM_REQ_ABORTED ;
 int CAM_REQ_CMP ;
 int CAM_SEL_TIMEOUT ;
 int CAM_UNEXP_BUSFREE ;
 int CLRBUSFREE ;
 int CLRINT ;
 int CLRIOERR ;
 int CLRSCSIINT ;
 int CLRSCSIPERR ;
 int CLRSELINGO ;
 int CLRSELTIMEO ;
 int CLRSINT0 ;
 int CLRSINT1 ;
 size_t CRCENDERR ;
 size_t CRCREQERR ;
 size_t CRCVALERR ;
 size_t DUAL_EDGE_ERR ;
 int ENAB40 ;
 int ENAUTOATNP ;
 int ENBUSFREE ;
 int ENRSELI ;
 int ENSELI ;
 int FALSE ;
 size_t IOERR ;
 int LASTPHASE ;
 scalar_t__ MSG_ABORT ;
 scalar_t__ MSG_ABORT_TAG ;
 scalar_t__ MSG_BUS_DEV_RESET ;
 scalar_t__ MSG_EXT_PPR ;
 scalar_t__ MSG_EXT_SDTR ;
 scalar_t__ MSG_EXT_WDTR ;
 int MSG_EXT_WDTR_BUS_8_BIT ;
 size_t MSG_INITIATOR_DET_ERR ;
 size_t MSG_NOOP ;
 int MSG_OUT ;
 scalar_t__ MSG_TYPE_NONE ;
 int NOT_IDENTIFIED ;
 int PHASE_MASK ;
 size_t P_BUSFREE ;
 size_t P_DATAIN ;
 size_t P_DATAIN_DT ;
 size_t P_MESGOUT ;
 int ROLE_INITIATOR ;
 int SAVED_LUN ;
 int SAVED_SCSIID ;
 int SBLKCTL ;
 int SCBPTR ;
 size_t SCB_GET_LUN (struct scb*) ;
 scalar_t__ SCB_IS_SILENT (struct scb*) ;
 size_t SCB_LIST_NULL ;
 int SCB_TAG ;
 int SCB_TRANSMISSION_ERROR ;
 char SCSIID_CHANNEL (struct ahc_softc*,size_t) ;
 size_t SCSIID_OUR_ID (size_t) ;
 int SCSIID_TARGET (struct ahc_softc*,size_t) ;
 size_t SCSIPERR ;
 int SCSIRATE ;
 size_t SCSIRSTI ;
 int SCSISEQ ;
 int SCSISIGI ;
 int SELBUSB ;
 size_t SELTO ;
 int SEQADDR0 ;
 int SEQADDR1 ;
 int SEQ_FLAGS ;
 int SIMODE1 ;
 size_t SINGLE_EDGE ;
 int SSTAT0 ;
 int SSTAT1 ;
 int SSTAT2 ;
 int TAG_ENB ;
 int TRUE ;
 int WAITING_SCBH ;
 scalar_t__ XPT_RESET_DEV ;
 int ahc_abort_scbs (struct ahc_softc*,size_t,char,size_t,size_t,int ,int ) ;
 int ahc_clear_critical_section (struct ahc_softc*) ;
 int ahc_clear_msg_state (struct ahc_softc*) ;
 int ahc_compile_devinfo (struct ahc_devinfo*,size_t,size_t,size_t,char,int ) ;
 int ahc_debug ;
 int ahc_dump_card_state (struct ahc_softc*) ;
 int ahc_fetch_devinfo (struct ahc_softc*,struct ahc_devinfo*) ;
 struct ahc_initiator_tinfo* ahc_fetch_transinfo (struct ahc_softc*,int ,int ,int ,struct ahc_tmode_tstate**) ;
 int ahc_force_renegotiation (struct ahc_softc*,struct ahc_devinfo*) ;
 int ahc_freeze_devq (struct ahc_softc*,struct scb*) ;
 int ahc_handle_devreset (struct ahc_softc*,struct ahc_devinfo*,int ,char*,int) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_inw (struct ahc_softc*,int ) ;
 struct scb* ahc_lookup_scb (struct ahc_softc*,size_t) ;
 scalar_t__ ahc_match_scb (struct ahc_softc*,struct scb*,size_t,char,size_t,size_t,int ) ;
 char* ahc_name (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 TYPE_6__* ahc_phase_table ;
 int ahc_print_path (struct ahc_softc*,struct scb*) ;
 int ahc_qinfifo_requeue_tail (struct ahc_softc*,struct scb*) ;
 int ahc_reset_channel (struct ahc_softc*,char,int) ;
 int ahc_restart (struct ahc_softc*) ;
 int ahc_scb_devinfo (struct ahc_softc*,struct ahc_devinfo*,struct scb*) ;
 scalar_t__ ahc_sent_msg (struct ahc_softc*,int ,scalar_t__,int) ;
 int ahc_set_syncrate (struct ahc_softc*,struct ahc_devinfo*,int *,int ,int ,int ,int,int) ;
 int ahc_set_width (struct ahc_softc*,struct ahc_devinfo*,int ,int,int) ;
 int ahc_unpause (struct ahc_softc*) ;
 int aic_set_transaction_status (struct scb*,int ) ;
 size_t num_phases ;
 int printf (char*,...) ;

void
ahc_handle_scsiint(struct ahc_softc *ahc, u_int intstat)
{
 u_int scb_index;
 u_int status0;
 u_int status;
 struct scb *scb;
 char cur_channel;
 char intr_channel;

 if ((ahc->features & AHC_TWIN) != 0
  && ((ahc_inb(ahc, SBLKCTL) & SELBUSB) != 0))
  cur_channel = 'B';
 else
  cur_channel = 'A';
 intr_channel = cur_channel;

 if ((ahc->features & AHC_ULTRA2) != 0)
  status0 = ahc_inb(ahc, SSTAT0) & IOERR;
 else
  status0 = 0;
 status = ahc_inb(ahc, SSTAT1) & (SELTO|SCSIRSTI|BUSFREE|SCSIPERR);
 if (status == 0 && status0 == 0) {
  if ((ahc->features & AHC_TWIN) != 0) {

    ahc_outb(ahc, SBLKCTL, ahc_inb(ahc, SBLKCTL) ^ SELBUSB);
   status = ahc_inb(ahc, SSTAT1)
          & (SELTO|SCSIRSTI|BUSFREE|SCSIPERR);
   intr_channel = (cur_channel == 'A') ? 'B' : 'A';
  }
  if (status == 0) {
   printf("%s: Spurious SCSI interrupt\n", ahc_name(ahc));
   ahc_outb(ahc, CLRINT, CLRSCSIINT);
   ahc_unpause(ahc);
   return;
  }
 }


 ahc_clear_critical_section(ahc);

 scb_index = ahc_inb(ahc, SCB_TAG);
 scb = ahc_lookup_scb(ahc, scb_index);
 if (scb != ((void*)0)
  && (ahc_inb(ahc, SEQ_FLAGS) & NOT_IDENTIFIED) != 0)
  scb = ((void*)0);

 if ((ahc->features & AHC_ULTRA2) != 0
  && (status0 & IOERR) != 0) {
  int now_lvd;

  now_lvd = ahc_inb(ahc, SBLKCTL) & ENAB40;
  printf("%s: Transceiver State Has Changed to %s mode\n",
         ahc_name(ahc), now_lvd ? "LVD" : "SE");
  ahc_outb(ahc, CLRSINT0, CLRIOERR);
  ahc_reset_channel(ahc, intr_channel,
                       now_lvd == 0);
 } else if ((status & SCSIRSTI) != 0) {
  printf("%s: Someone reset channel %c\n",
   ahc_name(ahc), intr_channel);
  if (intr_channel != cur_channel)
    ahc_outb(ahc, SBLKCTL, ahc_inb(ahc, SBLKCTL) ^ SELBUSB);
  ahc_reset_channel(ahc, intr_channel, FALSE);
 } else if ((status & SCSIPERR) != 0) {
  struct ahc_devinfo devinfo;
  u_int mesg_out;
  u_int curphase;
  u_int errorphase;
  u_int lastphase;
  u_int scsirate;
  u_int i;
  u_int sstat2;
  int silent;

  lastphase = ahc_inb(ahc, LASTPHASE);
  curphase = ahc_inb(ahc, SCSISIGI) & PHASE_MASK;
  sstat2 = ahc_inb(ahc, SSTAT2);
  ahc_outb(ahc, CLRSINT1, CLRSCSIPERR);
  if ((ahc_inb(ahc, SSTAT1) & SCSIPERR) != 0
   || curphase == P_DATAIN || curphase == P_DATAIN_DT)
   errorphase = curphase;
  else
   errorphase = lastphase;

  for (i = 0; i < num_phases; i++) {
   if (errorphase == ahc_phase_table[i].phase)
    break;
  }
  mesg_out = ahc_phase_table[i].mesg_out;
  silent = FALSE;
  if (scb != ((void*)0)) {
   if (SCB_IS_SILENT(scb))
    silent = TRUE;
   else
    ahc_print_path(ahc, scb);
   scb->flags |= SCB_TRANSMISSION_ERROR;
  } else
   printf("%s:%c:%d: ", ahc_name(ahc), intr_channel,
          SCSIID_TARGET(ahc, ahc_inb(ahc, SAVED_SCSIID)));
  scsirate = ahc_inb(ahc, SCSIRATE);
  if (silent == FALSE) {
   printf("parity error detected %s. "
          "SEQADDR(0x%x) SCSIRATE(0x%x)\n",
          ahc_phase_table[i].phasemsg,
          ahc_inw(ahc, SEQADDR0),
          scsirate);
   if ((ahc->features & AHC_DT) != 0) {
    if ((sstat2 & CRCVALERR) != 0)
     printf("\tCRC Value Mismatch\n");
    if ((sstat2 & CRCENDERR) != 0)
     printf("\tNo terminal CRC packet "
            "recevied\n");
    if ((sstat2 & CRCREQERR) != 0)
     printf("\tIllegal CRC packet "
            "request\n");
    if ((sstat2 & DUAL_EDGE_ERR) != 0)
     printf("\tUnexpected %sDT Data Phase\n",
            (scsirate & SINGLE_EDGE)
          ? "" : "non-");
   }
  }

  if ((ahc->features & AHC_DT) != 0
   && (sstat2 & DUAL_EDGE_ERR) != 0) {





   mesg_out = MSG_INITIATOR_DET_ERR;
  }
  if (mesg_out != MSG_NOOP) {
   if (ahc->msg_type != MSG_TYPE_NONE)
    ahc->send_msg_perror = TRUE;
   else
    ahc_outb(ahc, MSG_OUT, mesg_out);
  }





  ahc_fetch_devinfo(ahc, &devinfo);
  ahc_force_renegotiation(ahc, &devinfo);

  ahc_outb(ahc, CLRINT, CLRSCSIINT);
  ahc_unpause(ahc);
 } else if ((status & SELTO) != 0) {
  u_int scbptr;


  ahc_outb(ahc, SCSISEQ, 0);


  ahc_clear_msg_state(ahc);


  ahc_outb(ahc, SIMODE1, ahc_inb(ahc, SIMODE1) & ~ENBUSFREE);
  ahc_outb(ahc, CLRSINT1, CLRSELTIMEO|CLRBUSFREE|CLRSCSIPERR);
  ahc_outb(ahc, CLRSINT0, CLRSELINGO);

  scbptr = ahc_inb(ahc, WAITING_SCBH);
  ahc_outb(ahc, SCBPTR, scbptr);
  scb_index = ahc_inb(ahc, SCB_TAG);

  scb = ahc_lookup_scb(ahc, scb_index);
  if (scb == ((void*)0)) {
   printf("%s: ahc_intr - referenced scb not "
          "valid during SELTO scb(%d, %d)\n",
          ahc_name(ahc), scbptr, scb_index);
   ahc_dump_card_state(ahc);
  } else {
   struct ahc_devinfo devinfo;







   ahc_scb_devinfo(ahc, &devinfo, scb);
   aic_set_transaction_status(scb, CAM_SEL_TIMEOUT);
   ahc_freeze_devq(ahc, scb);







   ahc_handle_devreset(ahc, &devinfo,
         CAM_SEL_TIMEOUT,
         "Selection Timeout",
                          1);
  }
  ahc_outb(ahc, CLRINT, CLRSCSIINT);
  ahc_restart(ahc);
 } else if ((status & BUSFREE) != 0
  && (ahc_inb(ahc, SIMODE1) & ENBUSFREE) != 0) {
  struct ahc_devinfo devinfo;
  u_int lastphase;
  u_int saved_scsiid;
  u_int saved_lun;
  u_int target;
  u_int initiator_role_id;
  char channel;
  int printerror;







  ahc_outb(ahc, SCSISEQ,
    ahc_inb(ahc, SCSISEQ) & (ENSELI|ENRSELI|ENAUTOATNP));







  ahc_outb(ahc, SIMODE1, ahc_inb(ahc, SIMODE1) & ~ENBUSFREE);
  ahc_outb(ahc, CLRSINT1, CLRBUSFREE|CLRSCSIPERR);







  lastphase = ahc_inb(ahc, LASTPHASE);
  saved_scsiid = ahc_inb(ahc, SAVED_SCSIID);
  saved_lun = ahc_inb(ahc, SAVED_LUN);
  target = SCSIID_TARGET(ahc, saved_scsiid);
  initiator_role_id = SCSIID_OUR_ID(saved_scsiid);
  channel = SCSIID_CHANNEL(ahc, saved_scsiid);
  ahc_compile_devinfo(&devinfo, initiator_role_id,
        target, saved_lun, channel, ROLE_INITIATOR);
  printerror = 1;

  if (lastphase == P_MESGOUT) {
   u_int tag;

   tag = SCB_LIST_NULL;
   if (ahc_sent_msg(ahc, AHCMSG_1B, MSG_ABORT_TAG, TRUE)
    || ahc_sent_msg(ahc, AHCMSG_1B, MSG_ABORT, TRUE)) {
    if (ahc->msgout_buf[ahc->msgout_index - 1]
     == MSG_ABORT_TAG)
     tag = scb->hscb->tag;
    ahc_print_path(ahc, scb);
    printf("SCB %d - Abort%s Completed.\n",
           scb->hscb->tag, tag == SCB_LIST_NULL ?
           "" : " Tag");
    ahc_abort_scbs(ahc, target, channel,
            saved_lun, tag,
            ROLE_INITIATOR,
            CAM_REQ_ABORTED);
    printerror = 0;
   } else if (ahc_sent_msg(ahc, AHCMSG_1B,
      MSG_BUS_DEV_RESET, TRUE)) {
    ahc_compile_devinfo(&devinfo,
          initiator_role_id,
          target,
          CAM_LUN_WILDCARD,
          channel,
          ROLE_INITIATOR);
    ahc_handle_devreset(ahc, &devinfo,
          CAM_BDR_SENT,
          "Bus Device Reset",
                           0);
    printerror = 0;
   } else if (ahc_sent_msg(ahc, AHCMSG_EXT,
      MSG_EXT_PPR, FALSE)) {
    struct ahc_initiator_tinfo *tinfo;
    struct ahc_tmode_tstate *tstate;





    tinfo = ahc_fetch_transinfo(ahc,
           devinfo.channel,
           devinfo.our_scsiid,
           devinfo.target,
           &tstate);
    tinfo->curr.transport_version = 2;
    tinfo->goal.transport_version = 2;
    tinfo->goal.ppr_options = 0;
    ahc_qinfifo_requeue_tail(ahc, scb);
    printerror = 0;
   } else if (ahc_sent_msg(ahc, AHCMSG_EXT,
      MSG_EXT_WDTR, FALSE)) {




    ahc_set_width(ahc, &devinfo,
           MSG_EXT_WDTR_BUS_8_BIT,
           AHC_TRANS_CUR|AHC_TRANS_GOAL,
                     TRUE);
    ahc_qinfifo_requeue_tail(ahc, scb);
    printerror = 0;
   } else if (ahc_sent_msg(ahc, AHCMSG_EXT,
      MSG_EXT_SDTR, FALSE)) {




    ahc_set_syncrate(ahc, &devinfo,
                  ((void*)0),
                0, 0,
                     0,
      AHC_TRANS_CUR|AHC_TRANS_GOAL,
                TRUE);
    ahc_qinfifo_requeue_tail(ahc, scb);
    printerror = 0;
   }
  }
  if (printerror != 0) {
   u_int i;

   if (scb != ((void*)0)) {
    u_int tag;

    if ((scb->hscb->control & TAG_ENB) != 0)
     tag = scb->hscb->tag;
    else
     tag = SCB_LIST_NULL;
    ahc_print_path(ahc, scb);
    ahc_abort_scbs(ahc, target, channel,
            SCB_GET_LUN(scb), tag,
            ROLE_INITIATOR,
            CAM_UNEXP_BUSFREE);
   } else {




    printf("%s: ", ahc_name(ahc));
   }
   for (i = 0; i < num_phases; i++) {
    if (lastphase == ahc_phase_table[i].phase)
     break;
   }
   if (lastphase != P_BUSFREE) {






    ahc_force_renegotiation(ahc, &devinfo);
   }
   printf("Unexpected busfree %s\n"
          "SEQADDR == 0x%x\n",
          ahc_phase_table[i].phasemsg,
          ahc_inb(ahc, SEQADDR0)
    | (ahc_inb(ahc, SEQADDR1) << 8));
  }
  ahc_outb(ahc, CLRINT, CLRSCSIINT);
  ahc_restart(ahc);
 } else {
  printf("%s: Missing case in ahc_handle_scsiint. status = %x\n",
         ahc_name(ahc), status);
  ahc_outb(ahc, CLRINT, CLRSCSIINT);
 }
}
