
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef size_t u_int ;
struct scb {int flags; TYPE_1__* hscb; } ;
struct ahc_softc {size_t qinfifonext; int features; size_t* qinfifo; TYPE_4__* scb_data; TYPE_3__* next_queued_scb; } ;
typedef int role_t ;
typedef int cam_status ;
typedef int ahc_search_action ;
struct TYPE_8__ {size_t numscbs; int ** scbindex; } ;
struct TYPE_7__ {TYPE_2__* hscb; } ;
struct TYPE_6__ {size_t tag; } ;
struct TYPE_5__ {size_t next; size_t tag; } ;


 int AHC_QUEUE_REGS ;
 int CAM_REQ_CMP ;
 int CAM_REQ_INPROG ;
 int HNSCB_QOFF ;
 int KERNEL_QINPOS ;
 int NEXT_QUEUED_SCB ;
 int QINPOS ;
 int SCBPTR ;
 int SCB_ACTIVE ;
 size_t SCB_LIST_NULL ;
 int SCB_NEXT ;
 int SCB_TAG ;



 int SNSCB_QOFF ;
 int WAITING_SCBH ;
 int ahc_done (struct ahc_softc*,struct scb*) ;
 int ahc_dump_card_state (struct ahc_softc*) ;
 int ahc_freeze_untagged_queues (struct ahc_softc*) ;
 size_t ahc_inb (struct ahc_softc*,int ) ;
 struct scb* ahc_lookup_scb (struct ahc_softc*,size_t) ;
 scalar_t__ ahc_match_scb (struct ahc_softc*,struct scb*,int,char,int,size_t,int ) ;
 int ahc_outb (struct ahc_softc*,int ,size_t) ;
 int ahc_qinfifo_requeue (struct ahc_softc*,struct scb*,struct scb*) ;
 int ahc_release_untagged_queues (struct ahc_softc*) ;
 size_t ahc_rem_wscb (struct ahc_softc*,size_t,size_t) ;
 scalar_t__ ahc_search_untagged_queues (struct ahc_softc*,int *,int,char,int,int ,int) ;
 int ahc_swap_with_next_hscb (struct ahc_softc*,struct scb*) ;
 int aic_freeze_scb (struct scb*) ;
 int aic_get_transaction_status (struct scb*) ;
 int aic_set_transaction_status (struct scb*,int ) ;
 int panic (char*) ;
 int printf (char*,...) ;

int
ahc_search_qinfifo(struct ahc_softc *ahc, int target, char channel,
     int lun, u_int tag, role_t role, uint32_t status,
     ahc_search_action action)
{
 struct scb *scb;
 struct scb *prev_scb;
 uint8_t qinstart;
 uint8_t qinpos;
 uint8_t qintail;
 uint8_t next;
 uint8_t prev;
 uint8_t curscbptr;
 int found;
 int have_qregs;

 qintail = ahc->qinfifonext;
 have_qregs = (ahc->features & AHC_QUEUE_REGS) != 0;
 if (have_qregs) {
  qinstart = ahc_inb(ahc, SNSCB_QOFF);
  ahc_outb(ahc, SNSCB_QOFF, qinstart);
 } else
  qinstart = ahc_inb(ahc, QINPOS);
 qinpos = qinstart;
 found = 0;
 prev_scb = ((void*)0);

 if (action == 130) {




  ahc_freeze_untagged_queues(ahc);
 }





 ahc->qinfifonext = qinpos;
 ahc_outb(ahc, NEXT_QUEUED_SCB, ahc->next_queued_scb->hscb->tag);

 while (qinpos != qintail) {
  scb = ahc_lookup_scb(ahc, ahc->qinfifo[qinpos]);
  if (scb == ((void*)0)) {
   printf("qinpos = %d, SCB index = %d\n",
    qinpos, ahc->qinfifo[qinpos]);
   panic("Loop 1\n");
  }

  if (ahc_match_scb(ahc, scb, target, channel, lun, tag, role)) {



   found++;
   switch (action) {
   case 130:
   {
    cam_status ostat;
    cam_status cstat;

    ostat = aic_get_transaction_status(scb);
    if (ostat == CAM_REQ_INPROG)
     aic_set_transaction_status(scb, status);
    cstat = aic_get_transaction_status(scb);
    if (cstat != CAM_REQ_CMP)
     aic_freeze_scb(scb);
    if ((scb->flags & SCB_ACTIVE) == 0)
     printf("Inactive SCB in qinfifo\n");
    ahc_done(ahc, scb);


   }
   case 128:
    break;
   case 129:
    ahc_qinfifo_requeue(ahc, prev_scb, scb);
    prev_scb = scb;
    break;
   }
  } else {
   ahc_qinfifo_requeue(ahc, prev_scb, scb);
   prev_scb = scb;
  }
  qinpos++;
 }

 if ((ahc->features & AHC_QUEUE_REGS) != 0) {
  ahc_outb(ahc, HNSCB_QOFF, ahc->qinfifonext);
 } else {
  ahc_outb(ahc, KERNEL_QINPOS, ahc->qinfifonext);
 }

 if (action != 129
  && (found != 0)
  && (qinstart != ahc->qinfifonext)) {
  scb = ahc_lookup_scb(ahc, ahc->qinfifo[qinstart]);

  if (scb == ((void*)0)) {
   printf("found = %d, qinstart = %d, qinfifionext = %d\n",
    found, qinstart, ahc->qinfifonext);
   panic("First/Second Qinfifo fixup\n");
  }






  next = scb->hscb->next;
  ahc->scb_data->scbindex[scb->hscb->tag] = ((void*)0);
  ahc_swap_with_next_hscb(ahc, scb);
  scb->hscb->next = next;
  ahc->qinfifo[qinstart] = scb->hscb->tag;


  ahc_outb(ahc, NEXT_QUEUED_SCB, scb->hscb->tag);


  qintail = ahc->qinfifonext - 1;
  scb = ahc_lookup_scb(ahc, ahc->qinfifo[qintail]);
  scb->hscb->next = ahc->next_queued_scb->hscb->tag;
 }




 curscbptr = ahc_inb(ahc, SCBPTR);
 next = ahc_inb(ahc, WAITING_SCBH);
 prev = SCB_LIST_NULL;

 while (next != SCB_LIST_NULL) {
  uint8_t scb_index;

  ahc_outb(ahc, SCBPTR, next);
  scb_index = ahc_inb(ahc, SCB_TAG);
  if (scb_index >= ahc->scb_data->numscbs) {
   printf("Waiting List inconsistency. "
          "SCB index == %d, yet numscbs == %d.",
          scb_index, ahc->scb_data->numscbs);
   ahc_dump_card_state(ahc);
   panic("for safety");
  }
  scb = ahc_lookup_scb(ahc, scb_index);
  if (scb == ((void*)0)) {
   printf("scb_index = %d, next = %d\n",
    scb_index, next);
   panic("Waiting List traversal\n");
  }
  if (ahc_match_scb(ahc, scb, target, channel,
      lun, SCB_LIST_NULL, role)) {



   found++;
   switch (action) {
   case 130:
   {
    cam_status ostat;
    cam_status cstat;

    ostat = aic_get_transaction_status(scb);
    if (ostat == CAM_REQ_INPROG)
     aic_set_transaction_status(scb,
           status);
    cstat = aic_get_transaction_status(scb);
    if (cstat != CAM_REQ_CMP)
     aic_freeze_scb(scb);
    if ((scb->flags & SCB_ACTIVE) == 0)
     printf("Inactive SCB in Wait List\n");
    ahc_done(ahc, scb);

   }
   case 128:
    next = ahc_rem_wscb(ahc, next, prev);
    break;
   case 129:
    prev = next;
    next = ahc_inb(ahc, SCB_NEXT);
    break;
   }
  } else {

   prev = next;
   next = ahc_inb(ahc, SCB_NEXT);
  }
 }
 ahc_outb(ahc, SCBPTR, curscbptr);

 found += ahc_search_untagged_queues(ahc, ((void*)0), target,
         channel, lun, status, action);

 if (action == 130)
  ahc_release_untagged_queues(ahc);
 return (found);
}
