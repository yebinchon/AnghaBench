
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct scb {int sg_count; int flags; TYPE_3__* hscb; TYPE_1__* sg_list; } ;
struct ahc_softc {int flags; int timedout_scbs; TYPE_2__* scb_data; } ;
struct TYPE_6__ {int tag; scalar_t__ control; } ;
struct TYPE_5__ {scalar_t__ numscbs; } ;
struct TYPE_4__ {int addr; int len; } ;


 int AHC_PAGESCBS ;
 int AHC_SG_LEN_MASK ;
 scalar_t__ ATNO ;
 int CAM_CMD_TIMEOUT ;
 int CAM_REQUEUE_REQ ;
 scalar_t__ DISCONNECTED ;
 int FALSE ;
 scalar_t__ HOST_MSG ;
 int LASTPHASE ;
 scalar_t__ LIST_EMPTY (int *) ;
 struct scb* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct scb*,int ) ;
 scalar_t__ MK_MESSAGE ;
 int MSG_OUT ;
 scalar_t__ NOT_IDENTIFIED ;
 scalar_t__ P_BUSFREE ;
 scalar_t__ REQINIT ;
 int ROLE_INITIATOR ;
 int ROLE_TARGET ;
 int SCBPTR ;
 int SCB_ABORT ;
 int SCB_CONTROL ;
 int SCB_DEVICE_RESET ;
 char SCB_GET_CHANNEL (struct ahc_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TARGET (struct ahc_softc*,struct scb*) ;
 int SCB_LIST_NULL ;
 int SCB_TAG ;
 int SCB_TARGET_SCB ;
 int SCB_TIMEDOUT ;
 int SCSISIGO ;
 int SEARCH_COMPLETE ;
 int SEARCH_COUNT ;
 int SEQ_FLAGS ;
 int SSTAT0 ;
 int SSTAT1 ;
 scalar_t__ TARGET ;
 int TRUE ;
 int ahc_abort_scbs (struct ahc_softc*,int,char,int,int,int ,int ) ;
 int ahc_dump_card_state (struct ahc_softc*) ;
 scalar_t__ ahc_inb (struct ahc_softc*,int ) ;
 struct scb* ahc_lookup_scb (struct ahc_softc*,scalar_t__) ;
 char* ahc_name (struct ahc_softc*) ;
 scalar_t__ ahc_other_scb_timeout (struct ahc_softc*,struct scb*,struct scb*) ;
 int ahc_outb (struct ahc_softc*,int ,scalar_t__) ;
 int ahc_pause_and_flushwork (struct ahc_softc*) ;
 int ahc_print_path (struct ahc_softc*,struct scb*) ;
 int ahc_qinfifo_requeue_tail (struct ahc_softc*,struct scb*) ;
 int ahc_reset_channel (struct ahc_softc*,char,int) ;
 int ahc_restart (struct ahc_softc*) ;
 int ahc_search_disc_list (struct ahc_softc*,int,char,int,int,int,int,int) ;
 scalar_t__ ahc_search_qinfifo (struct ahc_softc*,int,char,int,int,int ,int ,int ) ;
 int ahc_set_recoveryscb (struct ahc_softc*,struct scb*) ;
 int ahc_unpause (struct ahc_softc*) ;
 int aic_scb_timer_reset (struct scb*,int) ;
 int aic_set_transaction_status (struct scb*,int ) ;
 int panic (char*) ;
 int printf (char*,...) ;
 int timedout_links ;

void
ahc_recover_commands(struct ahc_softc *ahc)
{
 struct scb *scb;
 int found;
 int restart_needed;
 u_int last_phase;






 ahc_pause_and_flushwork(ahc);

 if (LIST_EMPTY(&ahc->timedout_scbs) != 0) {
  printf("%s: Timedout SCBs already complete. "
         "Interrupts may not be functioning.\n", ahc_name(ahc));
  ahc_unpause(ahc);
  return;
 }

 restart_needed = 0;
 printf("%s: Recovery Initiated\n", ahc_name(ahc));
 ahc_dump_card_state(ahc);

 last_phase = ahc_inb(ahc, LASTPHASE);
 while ((scb = LIST_FIRST(&ahc->timedout_scbs)) != ((void*)0)) {
  u_int active_scb_index;
  u_int saved_scbptr;
  int target;
  int lun;
  int i;
  char channel;

  target = SCB_GET_TARGET(ahc, scb);
  channel = SCB_GET_CHANNEL(ahc, scb);
  lun = SCB_GET_LUN(scb);

  ahc_print_path(ahc, scb);
  printf("SCB 0x%x - timed out\n", scb->hscb->tag);
  if (scb->sg_count > 0) {
   for (i = 0; i < scb->sg_count; i++) {
    printf("sg[%d] - Addr 0x%x : Length %d\n",
           i,
           scb->sg_list[i].addr,
           scb->sg_list[i].len & AHC_SG_LEN_MASK);
   }
  }
  if (scb->flags & (SCB_DEVICE_RESET|SCB_ABORT)) {




   aic_set_transaction_status(scb, CAM_CMD_TIMEOUT);
bus_reset:
   found = ahc_reset_channel(ahc, channel,
                          TRUE);
   printf("%s: Issued Channel %c Bus Reset. "
          "%d SCBs aborted\n", ahc_name(ahc), channel,
          found);
   continue;
  }





  LIST_REMOVE(scb, timedout_links);
  scb->flags &= ~SCB_TIMEDOUT;
  saved_scbptr = ahc_inb(ahc, SCBPTR);
  active_scb_index = ahc_inb(ahc, SCB_TAG);

  if ((ahc_inb(ahc, SEQ_FLAGS) & NOT_IDENTIFIED) == 0
    && (active_scb_index < ahc->scb_data->numscbs)) {
   struct scb *active_scb;







   active_scb = ahc_lookup_scb(ahc, active_scb_index);
   if (active_scb != scb) {
    if (ahc_other_scb_timeout(ahc, scb,
         active_scb) == 0)
     goto bus_reset;
    continue;
   }


   if ((scb->flags & SCB_TARGET_SCB) != 0) {





    ahc_abort_scbs(ahc, SCB_GET_TARGET(ahc, scb),
            SCB_GET_CHANNEL(ahc, scb),
            SCB_GET_LUN(scb),
            scb->hscb->tag,
            ROLE_TARGET,
            CAM_CMD_TIMEOUT);


    restart_needed = 1;
    break;
   }

   ahc_set_recoveryscb(ahc, active_scb);
   ahc_outb(ahc, MSG_OUT, HOST_MSG);
   ahc_outb(ahc, SCSISIGO, last_phase|ATNO);
   ahc_print_path(ahc, active_scb);
   printf("BDR message in message buffer\n");
   active_scb->flags |= SCB_DEVICE_RESET;
   aic_scb_timer_reset(scb, 2 * 1000);
  } else if (last_phase != P_BUSFREE
   && (ahc_inb(ahc, SSTAT1) & REQINIT) == 0) {







   printf("%s: Connection stuck awaiting busfree or "
          "Identify Msg.\n", ahc_name(ahc));
   goto bus_reset;
  } else {
   int disconnected;

   if (last_phase != P_BUSFREE
    && (ahc_inb(ahc, SSTAT0) & TARGET) != 0) {

    printf("%s: Hung target selection\n",
           ahc_name(ahc));
    restart_needed = 1;
    break;
   }


   if ((scb->flags & SCB_TARGET_SCB) != 0)
    panic("Timed-out target SCB but bus idle");

   if (ahc_search_qinfifo(ahc, target, channel, lun,
            scb->hscb->tag, ROLE_INITIATOR,
                      0, SEARCH_COUNT) > 0) {
    disconnected = FALSE;
   } else {
    disconnected = TRUE;
   }

   if (disconnected) {

    ahc_set_recoveryscb(ahc, scb);
    scb->hscb->control |= MK_MESSAGE|DISCONNECTED;
    scb->flags |= SCB_DEVICE_RESET;
    ahc_search_disc_list(ahc, target, channel,
           lun, scb->hscb->tag,
                            TRUE,
                     TRUE,
                         FALSE);
    if ((ahc->flags & AHC_PAGESCBS) == 0) {
     ahc_outb(ahc, SCBPTR, scb->hscb->tag);
     ahc_outb(ahc, SCB_CONTROL,
       ahc_inb(ahc, SCB_CONTROL)
      | MK_MESSAGE);
    }






    ahc_search_qinfifo(ahc,
         SCB_GET_TARGET(ahc, scb),
         channel, SCB_GET_LUN(scb),
         SCB_LIST_NULL,
         ROLE_INITIATOR,
         CAM_REQUEUE_REQ,
         SEARCH_COMPLETE);
    ahc_print_path(ahc, scb);
    printf("Queuing a BDR SCB\n");
    ahc_qinfifo_requeue_tail(ahc, scb);
    ahc_outb(ahc, SCBPTR, saved_scbptr);
    aic_scb_timer_reset(scb, 2 * 1000);
   } else {


    ahc_set_recoveryscb(ahc, scb);
    ahc_print_path(ahc, scb);
    printf("SCB %d: Immediate reset.  "
     "Flags = 0x%x\n", scb->hscb->tag,
     scb->flags);
    goto bus_reset;
   }
  }
  break;
 }






 while ((scb = LIST_FIRST(&ahc->timedout_scbs)) != ((void*)0)) {

  LIST_REMOVE(scb, timedout_links);
  scb->flags &= ~SCB_TIMEDOUT;
 }

 if (restart_needed)
  ahc_restart(ahc);
 else
  ahc_unpause(ahc);
}
