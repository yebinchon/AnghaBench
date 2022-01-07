
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct scb_tailq {int dummy; } ;
struct scb {TYPE_3__* hscb; int flags; } ;
struct ahc_tmode_tstate {int dummy; } ;
struct ahc_softc {int flags; struct scb_tailq* untagged_queues; scalar_t__ msgout_index; scalar_t__ msgout_len; } ;
struct TYPE_6__ {int transport_version; scalar_t__ offset; } ;
struct TYPE_5__ {int transport_version; scalar_t__ offset; scalar_t__ ppr_options; } ;
struct ahc_initiator_tinfo {TYPE_2__ curr; TYPE_1__ goal; } ;
struct ahc_devinfo {int channel; int target; int lun; size_t target_offset; int our_scsiid; } ;
struct TYPE_8__ {int tqe; } ;
struct TYPE_7__ {int control; int tag; int scsiid; } ;


 int AHCMSG_EXT ;
 int AHC_QUEUE_BASIC ;
 int AHC_QUEUE_NONE ;
 int AHC_SCB_BTT ;
 int AHC_TRANS_ACTIVE ;
 int AHC_TRANS_GOAL ;
 int BUILD_TCL (int ,int) ;
 int CAM_REQUEUE_REQ ;
 int FALSE ;
 int LAST_MSG ;
 int MSG_EXT_PPR ;
 int MSG_EXT_SDTR ;
 int MSG_EXT_WDTR ;
 int MSG_EXT_WDTR_BUS_8_BIT ;
 int MSG_IDENTIFYFLAG ;
 int MSG_ORDERED_TASK ;
 int MSG_OUT ;
 int MSG_SIMPLE_TASK ;
 int ROLE_INITIATOR ;
 int SCB_CONTROL ;
 int SCB_GET_CHANNEL (struct ahc_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TARGET (struct ahc_softc*,struct scb*) ;
 int SCB_LIST_NULL ;
 int SCB_TAG ;
 int SCB_UNTAGGEDQ ;
 int SEARCH_COMPLETE ;
 int TAILQ_INSERT_HEAD (struct scb_tailq*,struct scb*,int ) ;
 int TRUE ;
 int ahc_assert_atn (struct ahc_softc*) ;
 int ahc_build_transfer_msg (struct ahc_softc*,struct ahc_devinfo*) ;
 int ahc_busy_tcl (struct ahc_softc*,int ,int ) ;
 struct ahc_initiator_tinfo* ahc_fetch_transinfo (struct ahc_softc*,int,int ,int,struct ahc_tmode_tstate**) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 struct scb* ahc_lookup_scb (struct ahc_softc*,int) ;
 char* ahc_name (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int ahc_search_qinfifo (struct ahc_softc*,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ ahc_sent_msg (struct ahc_softc*,int ,int ,int ) ;
 int ahc_set_syncrate (struct ahc_softc*,struct ahc_devinfo*,int *,int ,int ,int ,int,int ) ;
 int ahc_set_tags (struct ahc_softc*,struct ahc_devinfo*,int ) ;
 int ahc_set_width (struct ahc_softc*,struct ahc_devinfo*,int ,int,int ) ;
 int aic_set_transaction_tag (struct scb*,int ,int) ;
 scalar_t__ bootverbose ;
 TYPE_4__ links ;
 int printf (char*,char*,int,int,int,...) ;

__attribute__((used)) static int
ahc_handle_msg_reject(struct ahc_softc *ahc, struct ahc_devinfo *devinfo)
{






 struct scb *scb;
 struct ahc_initiator_tinfo *tinfo;
 struct ahc_tmode_tstate *tstate;
 u_int scb_index;
 u_int last_msg;
 int response = 0;

 scb_index = ahc_inb(ahc, SCB_TAG);
 scb = ahc_lookup_scb(ahc, scb_index);
 tinfo = ahc_fetch_transinfo(ahc, devinfo->channel,
        devinfo->our_scsiid,
        devinfo->target, &tstate);

 last_msg = ahc_inb(ahc, LAST_MSG);

 if (ahc_sent_msg(ahc, AHCMSG_EXT, MSG_EXT_PPR, FALSE)) {




  if (bootverbose) {
   printf("(%s:%c:%d:%d): PPR Rejected. "
          "Trying WDTR/SDTR\n",
          ahc_name(ahc), devinfo->channel,
          devinfo->target, devinfo->lun);
  }
  tinfo->goal.ppr_options = 0;
  tinfo->curr.transport_version = 2;
  tinfo->goal.transport_version = 2;
  ahc->msgout_index = 0;
  ahc->msgout_len = 0;
  ahc_build_transfer_msg(ahc, devinfo);
  ahc->msgout_index = 0;
  response = 1;
 } else if (ahc_sent_msg(ahc, AHCMSG_EXT, MSG_EXT_WDTR, FALSE)) {


  printf("(%s:%c:%d:%d): refuses WIDE negotiation.  Using "
         "8bit transfers\n", ahc_name(ahc),
         devinfo->channel, devinfo->target, devinfo->lun);
  ahc_set_width(ahc, devinfo, MSG_EXT_WDTR_BUS_8_BIT,
         AHC_TRANS_ACTIVE|AHC_TRANS_GOAL,
                   TRUE);







  if (tinfo->goal.offset != tinfo->curr.offset) {


   ahc->msgout_index = 0;
   ahc->msgout_len = 0;
   ahc_build_transfer_msg(ahc, devinfo);
   ahc->msgout_index = 0;
   response = 1;
  }
 } else if (ahc_sent_msg(ahc, AHCMSG_EXT, MSG_EXT_SDTR, FALSE)) {

  ahc_set_syncrate(ahc, devinfo, ((void*)0), 0,
               0, 0,
     AHC_TRANS_ACTIVE|AHC_TRANS_GOAL,
               TRUE);
  printf("(%s:%c:%d:%d): refuses synchronous negotiation. "
         "Using asynchronous transfers\n",
         ahc_name(ahc), devinfo->channel,
         devinfo->target, devinfo->lun);
 } else if ((scb->hscb->control & MSG_SIMPLE_TASK) != 0) {
  int tag_type;
  int mask;

  tag_type = (scb->hscb->control & MSG_SIMPLE_TASK);

  if (tag_type == MSG_SIMPLE_TASK) {
   printf("(%s:%c:%d:%d): refuses tagged commands.  "
          "Performing non-tagged I/O\n", ahc_name(ahc),
          devinfo->channel, devinfo->target, devinfo->lun);
   ahc_set_tags(ahc, devinfo, AHC_QUEUE_NONE);
   mask = ~0x23;
  } else {
   printf("(%s:%c:%d:%d): refuses %s tagged commands.  "
          "Performing simple queue tagged I/O only\n",
          ahc_name(ahc), devinfo->channel, devinfo->target,
          devinfo->lun, tag_type == MSG_ORDERED_TASK
          ? "ordered" : "head of queue");
   ahc_set_tags(ahc, devinfo, AHC_QUEUE_BASIC);
   mask = ~0x03;
  }





  ahc_outb(ahc, SCB_CONTROL,
    ahc_inb(ahc, SCB_CONTROL) & mask);
   scb->hscb->control &= mask;
  aic_set_transaction_tag(scb, FALSE,
             MSG_SIMPLE_TASK);
  ahc_outb(ahc, MSG_OUT, MSG_IDENTIFYFLAG);
  ahc_assert_atn(ahc);





  if ((ahc->flags & AHC_SCB_BTT) == 0) {
   struct scb_tailq *untagged_q;

   untagged_q =
       &(ahc->untagged_queues[devinfo->target_offset]);
   TAILQ_INSERT_HEAD(untagged_q, scb, links.tqe);
   scb->flags |= SCB_UNTAGGEDQ;
  }
  ahc_busy_tcl(ahc, BUILD_TCL(scb->hscb->scsiid, devinfo->lun),
        scb->hscb->tag);






  ahc_search_qinfifo(ahc, SCB_GET_TARGET(ahc, scb),
       SCB_GET_CHANNEL(ahc, scb),
       SCB_GET_LUN(scb), SCB_LIST_NULL,
       ROLE_INITIATOR, CAM_REQUEUE_REQ,
       SEARCH_COMPLETE);
 } else {



  printf("%s:%c:%d: Message reject for %x -- ignored\n",
         ahc_name(ahc), devinfo->channel, devinfo->target,
         last_msg);
 }
 return (response);
}
