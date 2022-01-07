
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct scb {int flags; TYPE_1__* hscb; } ;
struct ahd_softc {int timedout_scbs; } ;
struct TYPE_2__ {int task_management; int control; scalar_t__ task_attribute; scalar_t__ cdb_len; } ;


 int AHD_CORRECTABLE_ERROR (struct ahd_softc*) ;
 int AHD_MODE_SCSI ;
 int ATNO ;
 int CAM_CMD_TIMEOUT ;
 int CAM_REQUEUE_REQ ;
 int DISCONNECTED ;
 int HOST_MSG ;
 int LASTPHASE ;
 scalar_t__ LIST_EMPTY (int *) ;
 struct scb* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct scb*,int ) ;
 int MK_MESSAGE ;
 int MSG_OUT ;
 int NOT_IDENTIFIED ;
 int P_BUSFREE ;
 int ROLE_INITIATOR ;
 int SCB_ABORT ;
 int SCB_CONTROL ;
 int SCB_DEVICE_RESET ;
 char SCB_GET_CHANNEL (struct ahd_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TAG (struct scb*) ;
 int SCB_GET_TARGET (struct ahd_softc*,struct scb*) ;
 int SCB_LIST_NULL ;
 int SCB_PACKETIZED ;
 int SCB_RECOVERY_SCB ;
 int SCB_TASK_MANAGEMENT ;
 int SCB_TIMEDOUT ;
 int SCSIPHASE ;
 int SCSISIGO ;
 int SEARCH_COMPLETE ;
 int SEARCH_COUNT ;
 int SEQ_FLAGS ;
 int SIU_TASKMGMT_ABORT_TASK ;
 int TRUE ;
 int ahd_dump_card_state (struct ahd_softc*) ;
 int ahd_get_scbptr (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_is_paused (struct ahd_softc*) ;
 struct scb* ahd_lookup_scb (struct ahd_softc*,int) ;
 char* ahd_name (struct ahd_softc*) ;
 scalar_t__ ahd_other_scb_timeout (struct ahd_softc*,struct scb*,struct scb*) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_pause_and_flushwork (struct ahd_softc*) ;
 int ahd_print_path (struct ahd_softc*,struct scb*) ;
 int ahd_qinfifo_requeue_tail (struct ahd_softc*,struct scb*) ;
 int ahd_reset_channel (struct ahd_softc*,char,int ) ;
 scalar_t__ ahd_search_qinfifo (struct ahd_softc*,int,char,int,int,int ,int ,int ) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int ahd_set_recoveryscb (struct ahd_softc*,struct scb*) ;
 int ahd_set_scbptr (struct ahd_softc*,int) ;
 int ahd_unpause (struct ahd_softc*) ;
 int aic_scb_timer_reset (struct scb*,int) ;
 int aic_set_transaction_status (struct scb*,int ) ;
 int printf (char*,...) ;
 int timedout_links ;

void
ahd_recover_commands(struct ahd_softc *ahd)
{
 struct scb *scb;
 struct scb *active_scb;
 int found;
 int was_paused;
 u_int active_scbptr;
 u_int last_phase;






 was_paused = ahd_is_paused(ahd);

 printf("%s: Recovery Initiated - Card was %spaused\n", ahd_name(ahd),
        was_paused ? "" : "not ");
 AHD_CORRECTABLE_ERROR(ahd);
 ahd_dump_card_state(ahd);

 ahd_pause_and_flushwork(ahd);

 if (LIST_EMPTY(&ahd->timedout_scbs) != 0) {
  printf("%s: Timedout SCBs already complete. "
         "Interrupts may not be functioning.\n", ahd_name(ahd));
  ahd_unpause(ahd);
  return;
 }
 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
 last_phase = ahd_inb(ahd, LASTPHASE);
 active_scbptr = ahd_get_scbptr(ahd);
 active_scb = ((void*)0);
 if (last_phase != P_BUSFREE
  || (ahd_inb(ahd, SEQ_FLAGS) & NOT_IDENTIFIED) == 0)
  active_scb = ahd_lookup_scb(ahd, active_scbptr);

 while ((scb = LIST_FIRST(&ahd->timedout_scbs)) != ((void*)0)) {
  int target;
  int lun;
  char channel;

  target = SCB_GET_TARGET(ahd, scb);
  channel = SCB_GET_CHANNEL(ahd, scb);
  lun = SCB_GET_LUN(scb);

  ahd_print_path(ahd, scb);
  printf("SCB %d - timed out\n", SCB_GET_TAG(scb));

  if (scb->flags & (SCB_DEVICE_RESET|SCB_ABORT)) {




   aic_set_transaction_status(scb, CAM_CMD_TIMEOUT);
bus_reset:
   found = ahd_reset_channel(ahd, channel,
                          TRUE);
   printf("%s: Issued Channel %c Bus Reset. "
          "%d SCBs aborted\n", ahd_name(ahd), channel,
          found);
   continue;
  }





  LIST_REMOVE(scb, timedout_links);
  scb->flags &= ~SCB_TIMEDOUT;

  if (active_scb != ((void*)0)) {

   if (active_scb != scb) {
    if (ahd_other_scb_timeout(ahd, scb,
         active_scb) == 0)
     goto bus_reset;
    continue;
   }





   ahd_set_recoveryscb(ahd, active_scb);
                 active_scb->flags |= SCB_RECOVERY_SCB|SCB_DEVICE_RESET;
   ahd_outb(ahd, MSG_OUT, HOST_MSG);
   ahd_outb(ahd, SCSISIGO, last_phase|ATNO);
   ahd_print_path(ahd, active_scb);
   printf("BDR message in message buffer\n");
   aic_scb_timer_reset(scb, 2 * 1000);
   break;
  } else if (last_phase != P_BUSFREE
   && ahd_inb(ahd, SCSIPHASE) == 0) {







   printf("%s: Connection stuck awaiting busfree or "
          "Identify Msg.\n", ahd_name(ahd));
   goto bus_reset;
  } else if (ahd_search_qinfifo(ahd, target, channel, lun,
           SCB_GET_TAG(scb),
           ROLE_INITIATOR, 0,
           SEARCH_COUNT) > 0) {







   if (ahd_other_scb_timeout(ahd, scb, ((void*)0)) == 0)
    goto bus_reset;
  } else {





   ahd_set_recoveryscb(ahd, scb);
   scb->flags |= SCB_DEVICE_RESET;
   scb->hscb->cdb_len = 0;
   scb->hscb->task_attribute = 0;
   scb->hscb->task_management = SIU_TASKMGMT_ABORT_TASK;

   ahd_set_scbptr(ahd, SCB_GET_TAG(scb));
   if ((scb->flags & SCB_PACKETIZED) != 0) {







    ahd_outb(ahd, SCB_TASK_MANAGEMENT,
      scb->hscb->task_management);
   } else {
    scb->hscb->control |= MK_MESSAGE|DISCONNECTED;







    ahd_outb(ahd, SCB_CONTROL,
      ahd_inb(ahd, SCB_CONTROL)|MK_MESSAGE);
   }






   ahd_search_qinfifo(ahd, target, channel, lun,
        SCB_LIST_NULL, ROLE_INITIATOR,
        CAM_REQUEUE_REQ, SEARCH_COMPLETE);
   ahd_qinfifo_requeue_tail(ahd, scb);
   ahd_set_scbptr(ahd, active_scbptr);
   ahd_print_path(ahd, scb);
   printf("Queuing a BDR SCB\n");
   aic_scb_timer_reset(scb, 2 * 1000);
   break;
  }
 }






 while ((scb = LIST_FIRST(&ahd->timedout_scbs)) != ((void*)0)) {

  LIST_REMOVE(scb, timedout_links);
  scb->flags &= ~SCB_TIMEDOUT;
 }

 ahd_unpause(ahd);
}
