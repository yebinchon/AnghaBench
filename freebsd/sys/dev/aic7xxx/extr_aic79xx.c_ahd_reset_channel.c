
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct ahd_tmode_tstate {struct ahd_tmode_lstate** enabled_luns; } ;
struct ahd_tmode_lstate {int dummy; } ;
struct ahd_softc {int flags; int features; int reset_timer; struct ahd_tmode_tstate** enabled_targets; int * pending_device; } ;
struct ahd_devinfo {int channel; } ;


 int AC_BUS_RESET ;
 size_t AHD_MODE_SCSI ;
 size_t AHD_NUM_LUNS ;
 int AHD_RESET_POLL_ACTIVE ;
 int AHD_TARGETROLE ;
 int AHD_TRANS_CUR ;
 int AHD_WIDE ;
 int CAM_LUN_WILDCARD ;
 int CAM_SCSI_BUS_RESET ;
 size_t CAM_TARGET_WILDCARD ;
 size_t CURRFIFO ;
 size_t CURRFIFO_1 ;
 int DFCNTRL ;
 int DFFSTAT ;
 size_t ENBUSFREE ;
 size_t ENSCSIRST ;
 int EVENT_TYPE_BUS_RESET ;
 size_t HDMAEN ;
 size_t HDMAENACK ;
 int MSG_EXT_WDTR_BUS_8_BIT ;
 int ROLE_UNKNOWN ;
 int SCB_LIST_NULL ;
 size_t SCSIEN ;
 int SCSISEQ0 ;
 int SCSISEQ1 ;
 int SIMODE1 ;
 int TRUE ;
 int ahd_abort_scbs (struct ahd_softc*,size_t,char,int ,int ,int ,int ) ;
 int ahd_clear_critical_section (struct ahd_softc*) ;
 int ahd_clear_fifo (struct ahd_softc*,int) ;
 int ahd_clear_intstat (struct ahd_softc*) ;
 int ahd_clear_msg_state (struct ahd_softc*) ;
 int ahd_compile_devinfo (struct ahd_devinfo*,size_t,size_t,int ,char,int ) ;
 size_t ahd_inb (struct ahd_softc*,int ) ;
 int ahd_outb (struct ahd_softc*,int ,size_t) ;
 int ahd_pause (struct ahd_softc*) ;
 int ahd_queue_lstate_event (struct ahd_softc*,struct ahd_tmode_lstate*,size_t,int ,int ) ;
 int ahd_reset_current_bus (struct ahd_softc*) ;
 int ahd_reset_poll ;
 int ahd_restart (struct ahd_softc*) ;
 int ahd_run_tqinfifo (struct ahd_softc*,int ) ;
 int ahd_send_async (struct ahd_softc*,int ,size_t,int ,int ,int *) ;
 int ahd_send_lstate_events (struct ahd_softc*,struct ahd_tmode_lstate*) ;
 int ahd_set_modes (struct ahd_softc*,size_t,size_t) ;
 int ahd_set_syncrate (struct ahd_softc*,struct ahd_devinfo*,int ,int ,int ,int ,int ) ;
 int ahd_set_width (struct ahd_softc*,struct ahd_devinfo*,int ,int ,int ) ;
 int aic_delay (int) ;
 int aic_freeze_simq (struct ahd_softc*) ;
 int aic_timer_reset (int *,int ,int ,struct ahd_softc*) ;

int
ahd_reset_channel(struct ahd_softc *ahd, char channel, int initiate_reset)
{
 struct ahd_devinfo devinfo;
 u_int initiator;
 u_int target;
 u_int max_scsiid;
 int found;
 u_int fifo;
 u_int next_fifo;

 ahd->pending_device = ((void*)0);

 ahd_compile_devinfo(&devinfo,
       CAM_TARGET_WILDCARD,
       CAM_TARGET_WILDCARD,
       CAM_LUN_WILDCARD,
       channel, ROLE_UNKNOWN);
 ahd_pause(ahd);


 ahd_clear_critical_section(ahd);






 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);





 ahd_outb(ahd, SCSISEQ0, 0);
 ahd_outb(ahd, SCSISEQ1, 0);






 next_fifo = fifo = ahd_inb(ahd, DFFSTAT) & CURRFIFO;
 if (next_fifo > CURRFIFO_1)

  next_fifo = fifo = 0;
 do {
  next_fifo ^= CURRFIFO_1;
  ahd_set_modes(ahd, next_fifo, next_fifo);
  ahd_outb(ahd, DFCNTRL,
    ahd_inb(ahd, DFCNTRL) & ~(SCSIEN|HDMAEN));
  while ((ahd_inb(ahd, DFCNTRL) & HDMAENACK) != 0)
   aic_delay(10);



  ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
  ahd_outb(ahd, DFFSTAT, next_fifo);
 } while (next_fifo != fifo);




 ahd_clear_msg_state(ahd);
 ahd_outb(ahd, SIMODE1,
   ahd_inb(ahd, SIMODE1) & ~(ENBUSFREE|ENSCSIRST));

 if (initiate_reset)
  ahd_reset_current_bus(ahd);

 ahd_clear_intstat(ahd);





 found = ahd_abort_scbs(ahd, CAM_TARGET_WILDCARD, channel,
          CAM_LUN_WILDCARD, SCB_LIST_NULL,
          ROLE_UNKNOWN, CAM_SCSI_BUS_RESET);




 ahd_clear_fifo(ahd, 0);
 ahd_clear_fifo(ahd, 1);




 max_scsiid = (ahd->features & AHD_WIDE) ? 15 : 7;
 for (target = 0; target <= max_scsiid; target++) {

  if (ahd->enabled_targets[target] == ((void*)0))
   continue;
  for (initiator = 0; initiator <= max_scsiid; initiator++) {
   struct ahd_devinfo devinfo;

   ahd_compile_devinfo(&devinfo, target, initiator,
         CAM_LUN_WILDCARD,
         'A', ROLE_UNKNOWN);
   ahd_set_width(ahd, &devinfo, MSG_EXT_WDTR_BUS_8_BIT,
          AHD_TRANS_CUR, TRUE);
   ahd_set_syncrate(ahd, &devinfo, 0,
                0, 0,
      AHD_TRANS_CUR, TRUE);
  }
 }
 ahd_send_async(ahd, devinfo.channel, CAM_TARGET_WILDCARD,
         CAM_LUN_WILDCARD, AC_BUS_RESET, ((void*)0));
 ahd_restart(ahd);






 if ((ahd->flags & AHD_RESET_POLL_ACTIVE) == 0) {
  ahd->flags |= AHD_RESET_POLL_ACTIVE;
  aic_freeze_simq(ahd);
  aic_timer_reset(&ahd->reset_timer, 0, ahd_reset_poll, ahd);
 }
 return (found);
}
