
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct scb {int dummy; } ;
struct ahc_softc {TYPE_1__* scb_data; } ;
struct TYPE_2__ {scalar_t__ numscbs; } ;


 int DISCONNECTED_SCBH ;
 int ROLE_INITIATOR ;
 int SCBPTR ;
 scalar_t__ SCB_LIST_NULL ;
 int SCB_NEXT ;
 int SCB_TAG ;
 int ahc_dump_card_state (struct ahc_softc*) ;
 scalar_t__ ahc_inb (struct ahc_softc*,int ) ;
 struct scb* ahc_lookup_scb (struct ahc_softc*,scalar_t__) ;
 scalar_t__ ahc_match_scb (struct ahc_softc*,struct scb*,int,char,int,scalar_t__,int ) ;
 int ahc_outb (struct ahc_softc*,int ,scalar_t__) ;
 scalar_t__ ahc_rem_scb_from_disc_list (struct ahc_softc*,scalar_t__,scalar_t__) ;
 int panic (char*,...) ;
 int printf (char*,scalar_t__,scalar_t__) ;

int
ahc_search_disc_list(struct ahc_softc *ahc, int target, char channel,
       int lun, u_int tag, int stop_on_first, int remove,
       int save_state)
{
 struct scb *scbp;
 u_int next;
 u_int prev;
 u_int count;
 u_int active_scb;

 count = 0;
 next = ahc_inb(ahc, DISCONNECTED_SCBH);
 prev = SCB_LIST_NULL;

 if (save_state) {

  active_scb = ahc_inb(ahc, SCBPTR);
 } else

  active_scb = SCB_LIST_NULL;

 while (next != SCB_LIST_NULL) {
  u_int scb_index;

  ahc_outb(ahc, SCBPTR, next);
  scb_index = ahc_inb(ahc, SCB_TAG);
  if (scb_index >= ahc->scb_data->numscbs) {
   printf("Disconnected List inconsistency. "
          "SCB index == %d, yet numscbs == %d.",
          scb_index, ahc->scb_data->numscbs);
   ahc_dump_card_state(ahc);
   panic("for safety");
  }

  if (next == prev) {
   panic("Disconnected List Loop. "
         "cur SCBPTR == %x, prev SCBPTR == %x.",
         next, prev);
  }
  scbp = ahc_lookup_scb(ahc, scb_index);
  if (ahc_match_scb(ahc, scbp, target, channel, lun,
      tag, ROLE_INITIATOR)) {
   count++;
   if (remove) {
    next =
        ahc_rem_scb_from_disc_list(ahc, prev, next);
   } else {
    prev = next;
    next = ahc_inb(ahc, SCB_NEXT);
   }
   if (stop_on_first)
    break;
  } else {
   prev = next;
   next = ahc_inb(ahc, SCB_NEXT);
  }
 }
 if (save_state)
  ahc_outb(ahc, SCBPTR, active_scb);
 return (count);
}
