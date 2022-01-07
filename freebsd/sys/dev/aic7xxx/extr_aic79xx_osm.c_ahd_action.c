
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int func_code; int flags; void* status; int target_lun; struct scb* ccb_scb_ptr; int path; int target_id; } ;
struct TYPE_13__ {void* status; } ;
struct TYPE_11__ {int ppr_options; } ;
struct TYPE_12__ {TYPE_3__ spi; } ;
struct ccb_pathinq {int version_num; int hba_inquiry; int target_sprt; int max_target; int base_transfer_speed; int transport_version; TYPE_5__ ccb_h; TYPE_4__ xport_specific; int transport; int protocol_version; int protocol; int unit_number; int dev_name; int hba_vid; int sim_vid; int bus_id; int hba_misc; int initiator_id; int max_lun; int hba_eng_cnt; } ;
struct TYPE_15__ {int tag_action; int tag_id; int scsi_status; int init_id; } ;
union ccb {TYPE_8__ ccb_h; struct ccb_pathinq cpi; int ccg; int cts; TYPE_7__ csio; } ;
typedef int u_int ;
struct target_data {int initiator_tag; int target_phases; int scsi_status; } ;
struct scb {int flags; union ccb* io_ctx; struct hardware_scb* hscb; } ;
struct TYPE_10__ {struct target_data tdata; } ;
struct hardware_scb {int control; int task_management; TYPE_2__ shared_data; int cdb_len; int lun; int scsiid; } ;
struct cam_sim {int dummy; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_tmode_lstate {int immed_notifies; int accept_tios; } ;
struct ahd_softc {int flags; int features; int our_id; struct ahd_tmode_lstate* pending_device; struct ahd_tmode_lstate* black_hole; } ;
struct TYPE_9__ {int ppr_options; } ;
struct ahd_initiator_tinfo {TYPE_1__ curr; } ;
typedef void* cam_status ;
struct TYPE_14__ {int sle; } ;


 int AHD_BUILD_COL_IDX (int ,int ) ;
 int AHD_EXTENDED_TRANS_A ;
 int AHD_INITIATORROLE ;
 int AHD_NEVER_COL_IDX ;
 int AHD_NUM_LUNS_NONPKT ;
 int AHD_RESET_BUS_A ;
 int AHD_RESOURCE_SHORTAGE ;
 int AHD_TARGETMODE ;
 int AHD_TQINFIFO_BLOCKED ;
 int AHD_WIDE ;
 int BUILD_SCSIID (struct ahd_softc*,struct cam_sim*,int ,int ) ;
 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_SUBTRACE ;
 int CAM_DEBUG_TRACE ;
 int CAM_DIS_DISCONNECT ;
 void* CAM_PROVIDE_FAIL ;
 void* CAM_REQUEUE_REQ ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_INPROG ;
 void* CAM_REQ_INVALID ;
 int CAM_SEND_STATUS ;
 int CAM_TAG_ACTION_VALID ;
 int DEV_IDLEN ;
 int FALSE ;
 int HBA_IDLEN ;
 int MK_MESSAGE ;
 int MSG_EXT_PPR_IU_REQ ;
 int NO_DISCONNECT ;
 int PIM_NOBUSRESET ;
 int PIT_DISCONNECT ;
 int PIT_PROCESSOR ;
 int PIT_TERM_IO ;
 int PI_SDTR_ABLE ;
 int PI_TAG_ABLE ;
 int PI_WIDE_16 ;
 int PROTO_SCSI ;
 int SCB_DEVICE_RESET ;
 int SCB_TARGET_IMMEDIATE ;
 int SCSI_REV_2 ;
 int SID_SPI_CLOCK_DT_ST ;
 int SID_SPI_IUS ;
 int SID_SPI_QAS ;
 int SIM_CHANNEL (struct ahd_softc*,struct cam_sim*) ;
 int SIM_IDLEN ;
 int SIM_PATH (struct ahd_softc*,struct cam_sim*) ;
 int SIM_SCSI_ID (struct ahd_softc*,struct cam_sim*) ;
 int SIU_TASKMGMT_LUN_RESET ;
 int SLIST_INSERT_HEAD (int *,TYPE_8__*,int ) ;
 int SPHASE_PENDING ;
 int TARGET_SCB ;
 int TRUE ;
 int XPORT_SPI ;
 int ahd_abort_ccb (struct ahd_softc*,struct cam_sim*,union ccb*) ;
 int ahd_execute_scb (struct scb*,int *,int ,int ) ;
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,char,int ,int ,struct ahd_tmode_tstate**) ;
 void* ahd_find_tmode_devs (struct ahd_softc*,struct cam_sim*,union ccb*,struct ahd_tmode_tstate**,struct ahd_tmode_lstate**,int ) ;
 struct scb* ahd_get_scb (struct ahd_softc*,int ) ;
 int ahd_get_tran_settings (struct ahd_softc*,int ,int ,int *) ;
 int ahd_handle_en_lun (struct ahd_softc*,struct cam_sim*,union ccb*) ;
 int ahd_htole16 (int ) ;
 int ahd_reset_channel (struct ahd_softc*,int ,int ) ;
 int ahd_run_tqinfifo (struct ahd_softc*,int ) ;
 int ahd_send_lstate_events (struct ahd_softc*,struct ahd_tmode_lstate*) ;
 int ahd_set_tran_settings (struct ahd_softc*,int ,int ,int *) ;
 int ahd_setup_data (struct ahd_softc*,struct cam_sim*,TYPE_7__*,struct scb*) ;
 int aic_calc_geometry (int *,int) ;
 int bootverbose ;
 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int printf (char*,int) ;
 TYPE_6__ sim_links ;
 int strlcpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_simq (struct cam_sim*,int) ;
 int xpt_print_path (int ) ;

__attribute__((used)) static void
ahd_action(struct cam_sim *sim, union ccb *ccb)
{
 struct ahd_softc *ahd;



 u_int target_id;
 u_int our_id;

 CAM_DEBUG(ccb->ccb_h.path, CAM_DEBUG_TRACE, ("ahd_action\n"));

 ahd = (struct ahd_softc *)cam_sim_softc(sim);

 target_id = ccb->ccb_h.target_id;
 our_id = SIM_SCSI_ID(ahd, sim);

 switch (ccb->ccb_h.func_code) {
 case 130:
 case 131:
 {
  struct scb *scb;
  struct hardware_scb *hscb;
  struct ahd_initiator_tinfo *tinfo;
  struct ahd_tmode_tstate *tstate;
  u_int col_idx;

  if ((ahd->flags & AHD_INITIATORROLE) == 0
   && (ccb->ccb_h.func_code == 130
    || ccb->ccb_h.func_code == 131)) {
   ccb->ccb_h.status = CAM_PROVIDE_FAIL;
   xpt_done(ccb);
   return;
  }




  tinfo = ahd_fetch_transinfo(ahd, 'A', our_id,
         target_id, &tstate);
  if ((ccb->ccb_h.flags & CAM_TAG_ACTION_VALID) == 0
   || (tinfo->curr.ppr_options & MSG_EXT_PPR_IU_REQ) != 0
   || ccb->ccb_h.func_code == 138) {
   col_idx = AHD_NEVER_COL_IDX;
  } else {
   col_idx = AHD_BUILD_COL_IDX(target_id,
          ccb->ccb_h.target_lun);
  }
  if ((scb = ahd_get_scb(ahd, col_idx)) == ((void*)0)) {

   xpt_freeze_simq(sim, 1);
   ahd->flags |= AHD_RESOURCE_SHORTAGE;
   ccb->ccb_h.status = CAM_REQUEUE_REQ;
   xpt_done(ccb);
   return;
  }

  hscb = scb->hscb;

  CAM_DEBUG(ccb->ccb_h.path, CAM_DEBUG_SUBTRACE,
     ("start scb(%p)\n", scb));
  scb->io_ctx = ccb;



  ccb->ccb_h.ccb_scb_ptr = scb;




  hscb->control = 0;
  hscb->scsiid = BUILD_SCSIID(ahd, sim, target_id, our_id);
  hscb->lun = ccb->ccb_h.target_lun;
  if (ccb->ccb_h.func_code == 131) {
   hscb->cdb_len = 0;
   scb->flags |= SCB_DEVICE_RESET;
   hscb->control |= MK_MESSAGE;
   hscb->task_management = SIU_TASKMGMT_LUN_RESET;
   ahd_execute_scb(scb, ((void*)0), 0, 0);
  } else {
   hscb->task_management = 0;
   if (ccb->ccb_h.flags & CAM_TAG_ACTION_VALID)
    hscb->control |= ccb->csio.tag_action;

   ahd_setup_data(ahd, sim, &ccb->csio, scb);
  }
  break;
 }
 case 141:
 {
  ahd_abort_ccb(ahd, sim, ccb);
  break;
 }
 case 129:
 {
  ahd_set_tran_settings(ahd, SIM_SCSI_ID(ahd, sim),
          SIM_CHANNEL(ahd, sim), &ccb->cts);
  xpt_done(ccb);
  break;
 }
 case 136:

 {
  ahd_get_tran_settings(ahd, SIM_SCSI_ID(ahd, sim),
          SIM_CHANNEL(ahd, sim), &ccb->cts);
  xpt_done(ccb);
  break;
 }
 case 139:
 {
  aic_calc_geometry(&ccb->ccg, ahd->flags & AHD_EXTENDED_TRANS_A);
  xpt_done(ccb);
  break;
 }
 case 132:
 {
  int found;

  found = ahd_reset_channel(ahd, SIM_CHANNEL(ahd, sim),
                         TRUE);
  if (bootverbose) {
   xpt_print_path(SIM_PATH(ahd, sim));
   printf("SCSI bus reset delivered. "
          "%d SCBs aborted.\n", found);
  }
  ccb->ccb_h.status = CAM_REQ_CMP;
  xpt_done(ccb);
  break;
 }
 case 128:

  ccb->ccb_h.status = CAM_REQ_INVALID;
  xpt_done(ccb);
  break;
 case 133:
 {
  struct ccb_pathinq *cpi = &ccb->cpi;

  cpi->version_num = 1;
  cpi->hba_inquiry = PI_SDTR_ABLE|PI_TAG_ABLE;
  if ((ahd->features & AHD_WIDE) != 0)
   cpi->hba_inquiry |= PI_WIDE_16;
  if ((ahd->features & AHD_TARGETMODE) != 0) {
   cpi->target_sprt = PIT_PROCESSOR
      | PIT_DISCONNECT
      | PIT_TERM_IO;
  } else {
   cpi->target_sprt = 0;
  }
  cpi->hba_misc = 0;
  cpi->hba_eng_cnt = 0;
  cpi->max_target = (ahd->features & AHD_WIDE) ? 15 : 7;
  cpi->max_lun = AHD_NUM_LUNS_NONPKT - 1;
  cpi->initiator_id = ahd->our_id;
  if ((ahd->flags & AHD_RESET_BUS_A) == 0) {
   cpi->hba_misc |= PIM_NOBUSRESET;
  }
  cpi->bus_id = cam_sim_bus(sim);
  cpi->base_transfer_speed = 3300;
  strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
  strlcpy(cpi->hba_vid, "Adaptec", HBA_IDLEN);
  strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
  cpi->unit_number = cam_sim_unit(sim);
  cpi->protocol = PROTO_SCSI;
  cpi->protocol_version = SCSI_REV_2;
  cpi->transport = XPORT_SPI;
  cpi->transport_version = 4;
  cpi->xport_specific.spi.ppr_options = SID_SPI_CLOCK_DT_ST
          | SID_SPI_IUS
          | SID_SPI_QAS;
  cpi->ccb_h.status = CAM_REQ_CMP;
  xpt_done(ccb);
  break;
 }
 default:
  ccb->ccb_h.status = CAM_PROVIDE_FAIL;
  xpt_done(ccb);
  break;
 }
}
