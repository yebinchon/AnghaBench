
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct scb {int flags; TYPE_1__* hscb; } ;
struct ahc_softc {int* msgout_buf; int msg_type; scalar_t__ msgout_index; scalar_t__ msgout_len; } ;
struct ahc_devinfo {int target_mask; } ;
struct TYPE_2__ {int control; int tag; int scsiid; } ;


 int DISCENB ;
 int ENSELO ;
 int MK_MESSAGE ;
 int MSG_ABORT ;
 int MSG_ABORT_TAG ;
 int MSG_BUS_DEV_RESET ;
 int MSG_IDENTIFYFLAG ;
 int MSG_IDENTIFY_DISCFLAG ;
 int MSG_OUT ;
 int MSG_TYPE_INITIATOR_MSGOUT ;
 int SCB_ABORT ;
 int SCB_AUTO_NEGOTIATE ;
 int SCB_CONTROL ;
 int SCB_DEVICE_RESET ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_NEGOTIATE ;
 int SCB_TAG_TYPE ;
 int SCSISEQ ;
 int TAG_ENB ;
 int ahc_build_transfer_msg (struct ahc_softc*,struct ahc_devinfo*) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int ahc_print_path (struct ahc_softc*,struct scb*) ;
 int panic (char*,int,int,int,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ahc_setup_initiator_msgout(struct ahc_softc *ahc, struct ahc_devinfo *devinfo,
      struct scb *scb)
{





 ahc->msgout_index = 0;
 ahc->msgout_len = 0;

 if ((scb->flags & SCB_DEVICE_RESET) == 0
  && ahc_inb(ahc, MSG_OUT) == MSG_IDENTIFYFLAG) {
  u_int identify_msg;

  identify_msg = MSG_IDENTIFYFLAG | SCB_GET_LUN(scb);
  if ((scb->hscb->control & DISCENB) != 0)
   identify_msg |= MSG_IDENTIFY_DISCFLAG;
  ahc->msgout_buf[ahc->msgout_index++] = identify_msg;
  ahc->msgout_len++;

  if ((scb->hscb->control & TAG_ENB) != 0) {
   ahc->msgout_buf[ahc->msgout_index++] =
       scb->hscb->control & (TAG_ENB|SCB_TAG_TYPE);
   ahc->msgout_buf[ahc->msgout_index++] = scb->hscb->tag;
   ahc->msgout_len += 2;
  }
 }

 if (scb->flags & SCB_DEVICE_RESET) {
  ahc->msgout_buf[ahc->msgout_index++] = MSG_BUS_DEV_RESET;
  ahc->msgout_len++;
  ahc_print_path(ahc, scb);
  printf("Bus Device Reset Message Sent\n");







  ahc_outb(ahc, SCSISEQ, (ahc_inb(ahc, SCSISEQ) & ~ENSELO));
 } else if ((scb->flags & SCB_ABORT) != 0) {
  if ((scb->hscb->control & TAG_ENB) != 0)
   ahc->msgout_buf[ahc->msgout_index++] = MSG_ABORT_TAG;
  else
   ahc->msgout_buf[ahc->msgout_index++] = MSG_ABORT;
  ahc->msgout_len++;
  ahc_print_path(ahc, scb);
  printf("Abort%s Message Sent\n",
         (scb->hscb->control & TAG_ENB) != 0 ? " Tag" : "");







  ahc_outb(ahc, SCSISEQ, (ahc_inb(ahc, SCSISEQ) & ~ENSELO));
 } else if ((scb->flags & (SCB_AUTO_NEGOTIATE|SCB_NEGOTIATE)) != 0) {
  ahc_build_transfer_msg(ahc, devinfo);
 } else {
  printf("ahc_intr: AWAITING_MSG for an SCB that "
         "does not have a waiting message\n");
  printf("SCSIID = %x, target_mask = %x\n", scb->hscb->scsiid,
         devinfo->target_mask);
  panic("SCB = %d, SCB Control = %x, MSG_OUT = %x "
        "SCB flags = %x", scb->hscb->tag, scb->hscb->control,
        ahc_inb(ahc, MSG_OUT), scb->flags);
 }





 ahc_outb(ahc, SCB_CONTROL, ahc_inb(ahc, SCB_CONTROL) & ~MK_MESSAGE);
 scb->hscb->control &= ~MK_MESSAGE;
 ahc->msgout_index = 0;
 ahc->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
}
