
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct scb {int flags; } ;
struct ahc_softc {int flags; int pending_scbs; TYPE_1__* scb_data; } ;
typedef int role_t ;
typedef scalar_t__ cam_status ;
struct TYPE_2__ {int maxhscbs; } ;


 int AHC_NUM_LUNS ;
 int AHC_SCB_BTT ;
 scalar_t__ BUILD_TCL (int,int) ;
 int CAM_LUN_WILDCARD ;
 int CAM_REQUEUE_REQ ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_REQ_INPROG ;
 int CAM_TARGET_WILDCARD ;
 int FALSE ;
 struct scb* LIST_FIRST (int *) ;
 struct scb* LIST_NEXT (struct scb*,int ) ;
 int ROLE_TARGET ;
 int SCBPTR ;
 int SCB_ACTIVE ;
 scalar_t__ SCB_LIST_NULL ;
 int SCB_TAG ;
 int SEARCH_COMPLETE ;
 int TRUE ;
 int ahc_add_curscb_to_free_list (struct ahc_softc*) ;
 int ahc_done (struct ahc_softc*,struct scb*) ;
 int ahc_freeze_untagged_queues (struct ahc_softc*) ;
 scalar_t__ ahc_inb (struct ahc_softc*,int ) ;
 scalar_t__ ahc_index_busy_tcl (struct ahc_softc*,scalar_t__) ;
 struct scb* ahc_lookup_scb (struct ahc_softc*,scalar_t__) ;
 scalar_t__ ahc_match_scb (struct ahc_softc*,struct scb*,int,char,int,scalar_t__,int ) ;
 int ahc_outb (struct ahc_softc*,int ,scalar_t__) ;
 int ahc_platform_abort_scbs (struct ahc_softc*,int,char,int,scalar_t__,int ,int ) ;
 int ahc_release_untagged_queues (struct ahc_softc*) ;
 int ahc_search_disc_list (struct ahc_softc*,int,char,int,scalar_t__,int ,int ,int ) ;
 int ahc_search_qinfifo (struct ahc_softc*,int,char,int,scalar_t__,int ,int ,int ) ;
 int ahc_unbusy_tcl (struct ahc_softc*,scalar_t__) ;
 int aic_freeze_scb (struct scb*) ;
 scalar_t__ aic_get_transaction_status (struct scb*) ;
 int aic_set_transaction_status (struct scb*,int ) ;
 int pending_links ;
 int printf (char*) ;

int
ahc_abort_scbs(struct ahc_softc *ahc, int target, char channel,
        int lun, u_int tag, role_t role, uint32_t status)
{
 struct scb *scbp;
 struct scb *scbp_next;
 u_int active_scb;
 int i, j;
 int maxtarget;
 int minlun;
 int maxlun;

 int found;





 ahc_freeze_untagged_queues(ahc);


 active_scb = ahc_inb(ahc, SCBPTR);

 found = ahc_search_qinfifo(ahc, target, channel, lun, SCB_LIST_NULL,
       role, CAM_REQUEUE_REQ, SEARCH_COMPLETE);




 i = 0;
 maxtarget = 16;
 if (target != CAM_TARGET_WILDCARD) {
  i = target;
  if (channel == 'B')
   i += 8;
  maxtarget = i + 1;
 }

 if (lun == CAM_LUN_WILDCARD) {







  minlun = 0;
  maxlun = 1;
  if ((ahc->flags & AHC_SCB_BTT) != 0)
   maxlun = AHC_NUM_LUNS;
 } else {
  minlun = lun;
  maxlun = lun + 1;
 }

 if (role != ROLE_TARGET) {
  for (;i < maxtarget; i++) {
   for (j = minlun;j < maxlun; j++) {
    u_int scbid;
    u_int tcl;

    tcl = BUILD_TCL(i << 4, j);
    scbid = ahc_index_busy_tcl(ahc, tcl);
    scbp = ahc_lookup_scb(ahc, scbid);
    if (scbp == ((void*)0)
     || ahc_match_scb(ahc, scbp, target, channel,
        lun, tag, role) == 0)
     continue;
    ahc_unbusy_tcl(ahc, BUILD_TCL(i << 4, j));
   }
  }







  ahc_search_disc_list(ahc, target, channel, lun, tag,
                          FALSE, TRUE,
                       FALSE);
 }
 for (i = 0; i < ahc->scb_data->maxhscbs; i++) {
  u_int scbid;

  ahc_outb(ahc, SCBPTR, i);
  scbid = ahc_inb(ahc, SCB_TAG);
  scbp = ahc_lookup_scb(ahc, scbid);
  if ((scbp == ((void*)0) && scbid != SCB_LIST_NULL)
   || (scbp != ((void*)0)
    && ahc_match_scb(ahc, scbp, target, channel, lun, tag, role)))
   ahc_add_curscb_to_free_list(ahc);
 }







 scbp_next = LIST_FIRST(&ahc->pending_scbs);
 while (scbp_next != ((void*)0)) {
  scbp = scbp_next;
  scbp_next = LIST_NEXT(scbp, pending_links);
  if (ahc_match_scb(ahc, scbp, target, channel, lun, tag, role)) {
   cam_status ostat;

   ostat = aic_get_transaction_status(scbp);
   if (ostat == CAM_REQ_INPROG)
    aic_set_transaction_status(scbp, status);
   if (aic_get_transaction_status(scbp) != CAM_REQ_CMP)
    aic_freeze_scb(scbp);
   if ((scbp->flags & SCB_ACTIVE) == 0)
    printf("Inactive SCB on pending list\n");
   ahc_done(ahc, scbp);
   found++;
  }
 }
 ahc_outb(ahc, SCBPTR, active_scb);
 ahc_platform_abort_scbs(ahc, target, channel, lun, tag, role, status);
 ahc_release_untagged_queues(ahc);
 return found;
}
