
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_17__ {int func_code; int flags; void* status; int target_lun; struct scb* ccb_scb_ptr; int path; int target_id; } ;
struct TYPE_14__ {void* status; } ;
struct TYPE_25__ {int ppr_options; } ;
struct TYPE_26__ {TYPE_8__ spi; } ;
struct ccb_pathinq {int version_num; int hba_inquiry; int target_sprt; int max_target; int base_transfer_speed; int transport_version; TYPE_10__ ccb_h; TYPE_9__ xport_specific; int transport; int protocol_version; int protocol; int unit_number; int dev_name; int hba_vid; int sim_vid; int bus_id; int hba_misc; int initiator_id; int max_lun; int hba_eng_cnt; } ;
struct TYPE_21__ {int target_lun; int target_id; } ;
struct ccb_trans_settings_spi {int valid; int flags; int ppr_options; int sync_offset; int sync_period; int bus_width; } ;
struct TYPE_20__ {struct ccb_trans_settings_spi spi; } ;
struct ccb_trans_settings_scsi {int valid; int flags; } ;
struct TYPE_19__ {struct ccb_trans_settings_scsi scsi; } ;
struct ccb_trans_settings {int transport_version; int protocol_version; int type; TYPE_4__ ccb_h; TYPE_3__ xport_specific; TYPE_2__ proto_specific; } ;
struct TYPE_16__ {int tag_action; int tag_id; int scsi_status; int init_id; } ;
union ccb {TYPE_13__ ccb_h; struct ccb_pathinq cpi; int ccg; struct ccb_trans_settings cts; TYPE_12__ csio; } ;
typedef int uint16_t ;
typedef int u_int ;
struct target_data {int initiator_tag; int target_phases; int scsi_status; } ;
struct scb {int flags; union ccb* io_ctx; struct hardware_scb* hscb; } ;
struct TYPE_18__ {struct target_data tdata; } ;
struct hardware_scb {int control; TYPE_1__ shared_data; int cdb_len; int lun; int scsiid; } ;
struct cam_sim {int dummy; } ;
struct ahc_tmode_tstate {int tagenable; int discenable; } ;
struct ahc_tmode_lstate {int immed_notifies; int accept_tios; } ;
struct ahc_syncrate {int dummy; } ;
struct ahc_softc {int flags; int features; int our_id; int our_id_b; int user_tagenable; int user_discenable; struct ahc_tmode_lstate* pending_device; struct ahc_tmode_lstate* black_hole; } ;
struct TYPE_24__ {int period; int offset; int ppr_options; int transport_version; int protocol_version; } ;
struct TYPE_23__ {int period; int offset; int ppr_options; int transport_version; int protocol_version; } ;
struct TYPE_22__ {int transport_version; int protocol_version; } ;
struct ahc_initiator_tinfo {TYPE_7__ goal; TYPE_6__ user; TYPE_5__ curr; } ;
struct ahc_devinfo {int target_mask; int target; int our_scsiid; int channel; } ;
typedef void* cam_status ;
struct TYPE_15__ {int sle; } ;


 int AHC_DT ;
 int AHC_EXTENDED_TRANS_A ;
 int AHC_EXTENDED_TRANS_B ;
 int AHC_INITIATORROLE ;
 int AHC_NUM_LUNS ;
 int AHC_RESET_BUS_A ;
 int AHC_RESET_BUS_B ;
 int AHC_RESOURCE_SHORTAGE ;
 int AHC_SYNCRATE_DT ;
 int AHC_SYNCRATE_FAST ;
 int AHC_SYNCRATE_ULTRA ;
 int AHC_TARGETMODE ;
 int AHC_TQINFIFO_BLOCKED ;
 int AHC_TRANS_GOAL ;
 int AHC_TRANS_USER ;
 int AHC_ULTRA ;
 int AHC_ULTRA2 ;
 int AHC_WIDE ;
 int BUILD_SCSIID (struct ahc_softc*,struct cam_sim*,int ,int ) ;
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
 int CTS_SCSI_FLAGS_TAG_ENB ;
 int CTS_SCSI_VALID_TQ ;
 int CTS_SPI_FLAGS_DISC_ENB ;
 int CTS_SPI_VALID_BUS_WIDTH ;
 int CTS_SPI_VALID_DISC ;
 int CTS_SPI_VALID_PPR_OPTIONS ;
 int CTS_SPI_VALID_SYNC_OFFSET ;
 int CTS_SPI_VALID_SYNC_RATE ;
 int CTS_TYPE_CURRENT_SETTINGS ;
 int CTS_TYPE_USER_SETTINGS ;
 int DEV_IDLEN ;
 int FALSE ;
 int HBA_IDLEN ;
 int MK_MESSAGE ;
 int MSG_EXT_PPR_DT_REQ ;
 int MSG_EXT_WDTR_BUS_16_BIT ;
 int NO_DISCONNECT ;
 int PIM_NOBUSRESET ;
 int PIT_DISCONNECT ;
 int PIT_PROCESSOR ;
 int PIT_TERM_IO ;
 int PI_SDTR_ABLE ;
 int PI_TAG_ABLE ;
 int PI_WIDE_16 ;
 int PROTO_SCSI ;
 int ROLE_UNKNOWN ;
 int SCB_DEVICE_RESET ;
 int SCB_TARGET_IMMEDIATE ;
 int SCB_TARGET_SCB ;
 int SCSI_REV_2 ;
 int SID_SPI_CLOCK_DT_ST ;
 int SID_SPI_CLOCK_ST ;
 int SIM_CHANNEL (struct ahc_softc*,struct cam_sim*) ;
 int SIM_IDLEN ;
 int SIM_IS_SCSIBUS_B (struct ahc_softc*,struct cam_sim*) ;
 int SIM_PATH (struct ahc_softc*,struct cam_sim*) ;
 int SIM_SCSI_ID (struct ahc_softc*,struct cam_sim*) ;
 int SLIST_INSERT_HEAD (int *,TYPE_13__*,int ) ;
 int SPHASE_PENDING ;
 int TARGET_SCB ;
 int TRUE ;
 int XPORT_SPI ;
 int ahc_abort_ccb (struct ahc_softc*,struct cam_sim*,union ccb*) ;
 int ahc_compile_devinfo (struct ahc_devinfo*,int ,int ,int ,int ,int ) ;
 int ahc_execute_scb (struct scb*,int *,int ,int ) ;
 struct ahc_initiator_tinfo* ahc_fetch_transinfo (struct ahc_softc*,int ,int ,int ,struct ahc_tmode_tstate**) ;
 struct ahc_syncrate* ahc_find_syncrate (struct ahc_softc*,int *,int *,int ) ;
 void* ahc_find_tmode_devs (struct ahc_softc*,struct cam_sim*,union ccb*,struct ahc_tmode_tstate**,struct ahc_tmode_lstate**,int ) ;
 struct scb* ahc_get_scb (struct ahc_softc*) ;
 int ahc_get_tran_settings (struct ahc_softc*,int ,int ,struct ccb_trans_settings*) ;
 int ahc_handle_en_lun (struct ahc_softc*,struct cam_sim*,union ccb*) ;
 int ahc_reset_channel (struct ahc_softc*,int ,int ) ;
 int ahc_run_tqinfifo (struct ahc_softc*,int ) ;
 int ahc_send_lstate_events (struct ahc_softc*,struct ahc_tmode_lstate*) ;
 int ahc_set_syncrate (struct ahc_softc*,struct ahc_devinfo*,struct ahc_syncrate*,int ,int ,int ,int ,int ) ;
 int ahc_set_width (struct ahc_softc*,struct ahc_devinfo*,int ,int ,int ) ;
 int ahc_setup_data (struct ahc_softc*,struct cam_sim*,TYPE_12__*,struct scb*) ;
 int ahc_validate_offset (struct ahc_softc*,int *,struct ahc_syncrate*,int *,int ,int ) ;
 int ahc_validate_width (struct ahc_softc*,int *,int *,int ) ;
 int aic_calc_geometry (int *,int) ;
 int bootverbose ;
 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int printf (char*,int) ;
 TYPE_11__ sim_links ;
 int strlcpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_simq (struct cam_sim*,int) ;
 int xpt_print_path (int ) ;

__attribute__((used)) static void
ahc_action(struct cam_sim *sim, union ccb *ccb)
{
 struct ahc_softc *ahc;
 struct ahc_tmode_lstate *lstate;
 u_int target_id;
 u_int our_id;

 CAM_DEBUG(ccb->ccb_h.path, CAM_DEBUG_TRACE, ("ahc_action\n"));

 ahc = (struct ahc_softc *)cam_sim_softc(sim);

 target_id = ccb->ccb_h.target_id;
 our_id = SIM_SCSI_ID(ahc, sim);

 switch (ccb->ccb_h.func_code) {

 case 140:
 case 138:
 {
  struct ahc_tmode_tstate *tstate;
  cam_status status;

  status = ahc_find_tmode_devs(ahc, sim, ccb, &tstate,
          &lstate, TRUE);

  if (status != CAM_REQ_CMP) {
   if (ccb->ccb_h.func_code == 138) {

    tstate = ((void*)0);
    lstate = ahc->black_hole;
   } else {
    ccb->ccb_h.status = status;
    xpt_done(ccb);
    break;
   }
  }
  if (ccb->ccb_h.func_code == 140) {

   SLIST_INSERT_HEAD(&lstate->accept_tios, &ccb->ccb_h,
       sim_links.sle);
   ccb->ccb_h.status = CAM_REQ_INPROG;
   if ((ahc->flags & AHC_TQINFIFO_BLOCKED) != 0)
    ahc_run_tqinfifo(ahc, FALSE);
   break;
  }






  our_id = target_id;
  target_id = ccb->csio.init_id;

 }
 case 130:
 case 131:
 {
  struct scb *scb;
  struct hardware_scb *hscb;

  if ((ahc->flags & AHC_INITIATORROLE) == 0
   && (ccb->ccb_h.func_code == 130
    || ccb->ccb_h.func_code == 131)) {
   ccb->ccb_h.status = CAM_PROVIDE_FAIL;
   xpt_done(ccb);
   return;
  }




  if ((scb = ahc_get_scb(ahc)) == ((void*)0)) {

   xpt_freeze_simq(sim, 1);
   ahc->flags |= AHC_RESOURCE_SHORTAGE;
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
  hscb->scsiid = BUILD_SCSIID(ahc, sim, target_id, our_id);
  hscb->lun = ccb->ccb_h.target_lun;
  if (ccb->ccb_h.func_code == 131) {
   hscb->cdb_len = 0;
   scb->flags |= SCB_DEVICE_RESET;
   hscb->control |= MK_MESSAGE;
   ahc_execute_scb(scb, ((void*)0), 0, 0);
  } else {
   if (ccb->ccb_h.func_code == 138) {
    struct target_data *tdata;

    tdata = &hscb->shared_data.tdata;
    if (ahc->pending_device == lstate)
     scb->flags |= SCB_TARGET_IMMEDIATE;
    hscb->control |= TARGET_SCB;
    scb->flags |= SCB_TARGET_SCB;
    tdata->target_phases = 0;
    if ((ccb->ccb_h.flags & CAM_SEND_STATUS) != 0) {
     tdata->target_phases |= SPHASE_PENDING;
     tdata->scsi_status =
         ccb->csio.scsi_status;
    }
     if (ccb->ccb_h.flags & CAM_DIS_DISCONNECT)
     tdata->target_phases |= NO_DISCONNECT;

    tdata->initiator_tag = ccb->csio.tag_id;
   }
   if (ccb->ccb_h.flags & CAM_TAG_ACTION_VALID)
    hscb->control |= ccb->csio.tag_action;

   ahc_setup_data(ahc, sim, &ccb->csio, scb);
  }
  break;
 }
 case 134:
 case 135:
 {
  struct ahc_tmode_tstate *tstate;
  struct ahc_tmode_lstate *lstate;
  cam_status status;

  status = ahc_find_tmode_devs(ahc, sim, ccb, &tstate,
          &lstate, TRUE);

  if (status != CAM_REQ_CMP) {
   ccb->ccb_h.status = status;
   xpt_done(ccb);
   break;
  }
  SLIST_INSERT_HEAD(&lstate->immed_notifies, &ccb->ccb_h,
      sim_links.sle);
  ccb->ccb_h.status = CAM_REQ_INPROG;
  ahc_send_lstate_events(ahc, lstate);
  break;
 }
 case 137:
  ahc_handle_en_lun(ahc, sim, ccb);
  xpt_done(ccb);
  break;
 case 141:
 {
  ahc_abort_ccb(ahc, sim, ccb);
  break;
 }
 case 129:
 {
  struct ahc_devinfo devinfo;
  struct ccb_trans_settings *cts;
  struct ccb_trans_settings_scsi *scsi;
  struct ccb_trans_settings_spi *spi;
  struct ahc_initiator_tinfo *tinfo;
  struct ahc_tmode_tstate *tstate;
  uint16_t *discenable;
  uint16_t *tagenable;
  u_int update_type;

  cts = &ccb->cts;
  scsi = &cts->proto_specific.scsi;
  spi = &cts->xport_specific.spi;
  ahc_compile_devinfo(&devinfo, SIM_SCSI_ID(ahc, sim),
        cts->ccb_h.target_id,
        cts->ccb_h.target_lun,
        SIM_CHANNEL(ahc, sim),
        ROLE_UNKNOWN);
  tinfo = ahc_fetch_transinfo(ahc, devinfo.channel,
         devinfo.our_scsiid,
         devinfo.target, &tstate);
  update_type = 0;
  if (cts->type == CTS_TYPE_CURRENT_SETTINGS) {
   update_type |= AHC_TRANS_GOAL;
   discenable = &tstate->discenable;
   tagenable = &tstate->tagenable;
   tinfo->curr.protocol_version =
       cts->protocol_version;
   tinfo->curr.transport_version =
       cts->transport_version;
   tinfo->goal.protocol_version =
       cts->protocol_version;
   tinfo->goal.transport_version =
       cts->transport_version;
  } else if (cts->type == CTS_TYPE_USER_SETTINGS) {
   update_type |= AHC_TRANS_USER;
   discenable = &ahc->user_discenable;
   tagenable = &ahc->user_tagenable;
   tinfo->user.protocol_version =
       cts->protocol_version;
   tinfo->user.transport_version =
       cts->transport_version;
  } else {
   ccb->ccb_h.status = CAM_REQ_INVALID;
   xpt_done(ccb);
   break;
  }

  if ((spi->valid & CTS_SPI_VALID_DISC) != 0) {
   if ((spi->flags & CTS_SPI_FLAGS_DISC_ENB) != 0)
    *discenable |= devinfo.target_mask;
   else
    *discenable &= ~devinfo.target_mask;
  }

  if ((scsi->valid & CTS_SCSI_VALID_TQ) != 0) {
   if ((scsi->flags & CTS_SCSI_FLAGS_TAG_ENB) != 0)
    *tagenable |= devinfo.target_mask;
   else
    *tagenable &= ~devinfo.target_mask;
  }

  if ((spi->valid & CTS_SPI_VALID_BUS_WIDTH) != 0) {
   ahc_validate_width(ahc, ((void*)0),
        &spi->bus_width, ROLE_UNKNOWN);
   ahc_set_width(ahc, &devinfo, spi->bus_width,
          update_type, FALSE);
  }

  if ((spi->valid & CTS_SPI_VALID_PPR_OPTIONS) == 0) {
   if (update_type == AHC_TRANS_USER)
    spi->ppr_options = tinfo->user.ppr_options;
   else
    spi->ppr_options = tinfo->goal.ppr_options;
  }

  if ((spi->valid & CTS_SPI_VALID_SYNC_OFFSET) == 0) {
   if (update_type == AHC_TRANS_USER)
    spi->sync_offset = tinfo->user.offset;
   else
    spi->sync_offset = tinfo->goal.offset;
  }

  if ((spi->valid & CTS_SPI_VALID_SYNC_RATE) == 0) {
   if (update_type == AHC_TRANS_USER)
    spi->sync_period = tinfo->user.period;
   else
    spi->sync_period = tinfo->goal.period;
  }

  if (((spi->valid & CTS_SPI_VALID_SYNC_RATE) != 0)
   || ((spi->valid & CTS_SPI_VALID_SYNC_OFFSET) != 0)) {
   struct ahc_syncrate *syncrate;
   u_int maxsync;

   if ((ahc->features & AHC_ULTRA2) != 0)
    maxsync = AHC_SYNCRATE_DT;
   else if ((ahc->features & AHC_ULTRA) != 0)
    maxsync = AHC_SYNCRATE_ULTRA;
   else
    maxsync = AHC_SYNCRATE_FAST;

   if (spi->bus_width != MSG_EXT_WDTR_BUS_16_BIT)
    spi->ppr_options &= ~MSG_EXT_PPR_DT_REQ;

   syncrate = ahc_find_syncrate(ahc, &spi->sync_period,
           &spi->ppr_options,
           maxsync);
   ahc_validate_offset(ahc, ((void*)0),
         syncrate, &spi->sync_offset,
         spi->bus_width, ROLE_UNKNOWN);


   if (spi->sync_offset == 0) {
    spi->sync_period = 0;
    spi->ppr_options = 0;
   }

   ahc_set_syncrate(ahc, &devinfo, syncrate,
      spi->sync_period, spi->sync_offset,
      spi->ppr_options, update_type,
                FALSE);
  }
  ccb->ccb_h.status = CAM_REQ_CMP;
  xpt_done(ccb);
  break;
 }
 case 136:

 {

  ahc_get_tran_settings(ahc, SIM_SCSI_ID(ahc, sim),
          SIM_CHANNEL(ahc, sim), &ccb->cts);
  xpt_done(ccb);
  break;
 }
 case 139:
 {
  int extended;

  extended = SIM_IS_SCSIBUS_B(ahc, sim)
    ? ahc->flags & AHC_EXTENDED_TRANS_B
    : ahc->flags & AHC_EXTENDED_TRANS_A;
  aic_calc_geometry(&ccb->ccg, extended);
  xpt_done(ccb);
  break;
 }
 case 132:
 {
  int found;

  found = ahc_reset_channel(ahc, SIM_CHANNEL(ahc, sim),
                         TRUE);
  if (bootverbose) {
   xpt_print_path(SIM_PATH(ahc, sim));
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
  if ((ahc->features & AHC_WIDE) != 0)
   cpi->hba_inquiry |= PI_WIDE_16;
  if ((ahc->features & AHC_TARGETMODE) != 0) {
   cpi->target_sprt = PIT_PROCESSOR
      | PIT_DISCONNECT
      | PIT_TERM_IO;
  } else {
   cpi->target_sprt = 0;
  }
  cpi->hba_misc = 0;
  cpi->hba_eng_cnt = 0;
  cpi->max_target = (ahc->features & AHC_WIDE) ? 15 : 7;
  cpi->max_lun = AHC_NUM_LUNS - 1;
  if (SIM_IS_SCSIBUS_B(ahc, sim)) {
   cpi->initiator_id = ahc->our_id_b;
   if ((ahc->flags & AHC_RESET_BUS_B) == 0)
    cpi->hba_misc |= PIM_NOBUSRESET;
  } else {
   cpi->initiator_id = ahc->our_id;
   if ((ahc->flags & AHC_RESET_BUS_A) == 0)
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
  cpi->transport_version = 2;
  cpi->xport_specific.spi.ppr_options = SID_SPI_CLOCK_ST;
  if ((ahc->features & AHC_DT) != 0) {
   cpi->transport_version = 3;
   cpi->xport_specific.spi.ppr_options =
       SID_SPI_CLOCK_DT_ST;
  }
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
