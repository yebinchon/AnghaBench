#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int func_code; int flags; void* status; int /*<<< orphan*/  target_lun; struct scb* ccb_scb_ptr; int /*<<< orphan*/  path; int /*<<< orphan*/  target_id; } ;
struct TYPE_13__ {void* status; } ;
struct TYPE_11__ {int ppr_options; } ;
struct TYPE_12__ {TYPE_3__ spi; } ;
struct ccb_pathinq {int version_num; int hba_inquiry; int target_sprt; int max_target; int base_transfer_speed; int transport_version; TYPE_5__ ccb_h; TYPE_4__ xport_specific; int /*<<< orphan*/  transport; int /*<<< orphan*/  protocol_version; int /*<<< orphan*/  protocol; int /*<<< orphan*/  unit_number; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  hba_vid; int /*<<< orphan*/  sim_vid; int /*<<< orphan*/  bus_id; int /*<<< orphan*/  hba_misc; int /*<<< orphan*/  initiator_id; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  hba_eng_cnt; } ;
struct TYPE_15__ {int /*<<< orphan*/  tag_action; int /*<<< orphan*/  tag_id; int /*<<< orphan*/  scsi_status; int /*<<< orphan*/  init_id; } ;
union ccb {TYPE_8__ ccb_h; struct ccb_pathinq cpi; int /*<<< orphan*/  ccg; int /*<<< orphan*/  cts; TYPE_7__ csio; } ;
typedef  int /*<<< orphan*/  u_int ;
struct target_data {int /*<<< orphan*/  initiator_tag; int /*<<< orphan*/  target_phases; int /*<<< orphan*/  scsi_status; } ;
struct scb {int /*<<< orphan*/  flags; union ccb* io_ctx; struct hardware_scb* hscb; } ;
struct TYPE_10__ {struct target_data tdata; } ;
struct hardware_scb {int /*<<< orphan*/  control; int /*<<< orphan*/  task_management; TYPE_2__ shared_data; int /*<<< orphan*/  cdb_len; int /*<<< orphan*/  lun; int /*<<< orphan*/  scsiid; } ;
struct cam_sim {int dummy; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_tmode_lstate {int /*<<< orphan*/  immed_notifies; int /*<<< orphan*/  accept_tios; } ;
struct ahd_softc {int flags; int features; int /*<<< orphan*/  our_id; struct ahd_tmode_lstate* pending_device; struct ahd_tmode_lstate* black_hole; } ;
struct TYPE_9__ {int ppr_options; } ;
struct ahd_initiator_tinfo {TYPE_1__ curr; } ;
typedef  void* cam_status ;
struct TYPE_14__ {int /*<<< orphan*/  sle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int AHD_EXTENDED_TRANS_A ; 
 int AHD_INITIATORROLE ; 
 int /*<<< orphan*/  AHD_NEVER_COL_IDX ; 
 int /*<<< orphan*/  AHD_NUM_LUNS_NONPKT ; 
 int AHD_RESET_BUS_A ; 
 int AHD_RESOURCE_SHORTAGE ; 
 int AHD_TARGETMODE ; 
 int AHD_TQINFIFO_BLOCKED ; 
 int AHD_WIDE ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,struct cam_sim*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_SUBTRACE ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int CAM_DIS_DISCONNECT ; 
 void* CAM_PROVIDE_FAIL ; 
 void* CAM_REQUEUE_REQ ; 
 void* CAM_REQ_CMP ; 
 void* CAM_REQ_INPROG ; 
 void* CAM_REQ_INVALID ; 
 int CAM_SEND_STATUS ; 
 int CAM_TAG_ACTION_VALID ; 
 int /*<<< orphan*/  DEV_IDLEN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HBA_IDLEN ; 
 int /*<<< orphan*/  MK_MESSAGE ; 
 int MSG_EXT_PPR_IU_REQ ; 
 int /*<<< orphan*/  NO_DISCONNECT ; 
 int /*<<< orphan*/  PIM_NOBUSRESET ; 
 int PIT_DISCONNECT ; 
 int PIT_PROCESSOR ; 
 int PIT_TERM_IO ; 
 int PI_SDTR_ABLE ; 
 int PI_TAG_ABLE ; 
 int PI_WIDE_16 ; 
 int /*<<< orphan*/  PROTO_SCSI ; 
 int /*<<< orphan*/  SCB_DEVICE_RESET ; 
 int /*<<< orphan*/  SCB_TARGET_IMMEDIATE ; 
 int /*<<< orphan*/  SCSI_REV_2 ; 
 int SID_SPI_CLOCK_DT_ST ; 
 int SID_SPI_IUS ; 
 int SID_SPI_QAS ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,struct cam_sim*) ; 
 int /*<<< orphan*/  SIM_IDLEN ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,struct cam_sim*) ; 
 int /*<<< orphan*/  SIU_TASKMGMT_LUN_RESET ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPHASE_PENDING ; 
 int /*<<< orphan*/  TARGET_SCB ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XPORT_SPI ; 
#define  XPT_ABORT 141 
#define  XPT_ACCEPT_TARGET_IO 140 
#define  XPT_CALC_GEOMETRY 139 
#define  XPT_CONT_TARGET_IO 138 
#define  XPT_EN_LUN 137 
#define  XPT_GET_TRAN_SETTINGS 136 
#define  XPT_IMMEDIATE_NOTIFY 135 
#define  XPT_NOTIFY_ACKNOWLEDGE 134 
#define  XPT_PATH_INQ 133 
#define  XPT_RESET_BUS 132 
#define  XPT_RESET_DEV 131 
#define  XPT_SCSI_IO 130 
#define  XPT_SET_TRAN_SETTINGS 129 
#define  XPT_TERM_IO 128 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,struct cam_sim*,union ccb*) ; 
 int /*<<< orphan*/  FUNC8 (struct scb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ahd_initiator_tinfo* FUNC9 (struct ahd_softc*,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ahd_tmode_tstate**) ; 
 void* FUNC10 (struct ahd_softc*,struct cam_sim*,union ccb*,struct ahd_tmode_tstate**,struct ahd_tmode_lstate**,int /*<<< orphan*/ ) ; 
 struct scb* FUNC11 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ahd_softc*,struct cam_sim*,union ccb*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ahd_softc*,struct ahd_tmode_lstate*) ; 
 int /*<<< orphan*/  FUNC18 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct ahd_softc*,struct cam_sim*,TYPE_7__*,struct scb*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  bootverbose ; 
 int /*<<< orphan*/  FUNC21 (struct cam_sim*) ; 
 char* FUNC22 (struct cam_sim*) ; 
 scalar_t__ FUNC23 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC24 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC25 (char*,int) ; 
 TYPE_6__ sim_links ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (union ccb*) ; 
 int /*<<< orphan*/  FUNC28 (struct cam_sim*,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC30(struct cam_sim *sim, union ccb *ccb)
{
	struct	ahd_softc *ahd;
#ifdef AHD_TARGET_MODE
	struct	ahd_tmode_lstate *lstate;
#endif
	u_int	target_id;
	u_int	our_id;

	FUNC2(ccb->ccb_h.path, CAM_DEBUG_TRACE, ("ahd_action\n"));
	
	ahd = (struct ahd_softc *)FUNC23(sim);

	target_id = ccb->ccb_h.target_id;
	our_id = FUNC5(ahd, sim);
	
	switch (ccb->ccb_h.func_code) {
	/* Common cases first */
#ifdef AHD_TARGET_MODE
	case XPT_ACCEPT_TARGET_IO:	/* Accept Host Target Mode CDB */
	case XPT_CONT_TARGET_IO:/* Continue Host Target I/O Connection*/
	{
		struct	   ahd_tmode_tstate *tstate;
		cam_status status;

		status = ahd_find_tmode_devs(ahd, sim, ccb, &tstate,
					     &lstate, TRUE);

		if (status != CAM_REQ_CMP) {
			if (ccb->ccb_h.func_code == XPT_CONT_TARGET_IO) {
				/* Response from the black hole device */
				tstate = NULL;
				lstate = ahd->black_hole;
			} else {
				ccb->ccb_h.status = status;
				xpt_done(ccb);
				break;
			}
		}
		if (ccb->ccb_h.func_code == XPT_ACCEPT_TARGET_IO) {

			SLIST_INSERT_HEAD(&lstate->accept_tios, &ccb->ccb_h,
					  sim_links.sle);
			ccb->ccb_h.status = CAM_REQ_INPROG;
			if ((ahd->flags & AHD_TQINFIFO_BLOCKED) != 0)
				ahd_run_tqinfifo(ahd, /*paused*/FALSE);
			break;
		}

		/*
		 * The target_id represents the target we attempt to
		 * select.  In target mode, this is the initiator of
		 * the original command.
		 */
		our_id = target_id;
		target_id = ccb->csio.init_id;
		/* FALLTHROUGH */
	}
#endif
	case XPT_SCSI_IO:	/* Execute the requested I/O operation */
	case XPT_RESET_DEV:	/* Bus Device Reset the specified SCSI device */
	{
		struct	scb *scb;
		struct	hardware_scb *hscb;	
		struct	ahd_initiator_tinfo *tinfo;
		struct	ahd_tmode_tstate *tstate;
		u_int	col_idx;

		if ((ahd->flags & AHD_INITIATORROLE) == 0
		 && (ccb->ccb_h.func_code == XPT_SCSI_IO
		  || ccb->ccb_h.func_code == XPT_RESET_DEV)) {
			ccb->ccb_h.status = CAM_PROVIDE_FAIL;
			FUNC27(ccb);
			return;
		}

		/*
		 * get an scb to use.
		 */
		tinfo = FUNC9(ahd, 'A', our_id,
					    target_id, &tstate);
		if ((ccb->ccb_h.flags & CAM_TAG_ACTION_VALID) == 0
		 || (tinfo->curr.ppr_options & MSG_EXT_PPR_IU_REQ) != 0
		 || ccb->ccb_h.func_code == XPT_CONT_TARGET_IO) {
			col_idx = AHD_NEVER_COL_IDX;
		} else {
			col_idx = FUNC0(target_id,
						    ccb->ccb_h.target_lun);
		}
		if ((scb = FUNC11(ahd, col_idx)) == NULL) {
	
			FUNC28(sim, /*count*/1);
			ahd->flags |= AHD_RESOURCE_SHORTAGE;
			ccb->ccb_h.status = CAM_REQUEUE_REQ;
			FUNC27(ccb);
			return;
		}
		
		hscb = scb->hscb;
		
		FUNC2(ccb->ccb_h.path, CAM_DEBUG_SUBTRACE,
			  ("start scb(%p)\n", scb));
		scb->io_ctx = ccb;
		/*
		 * So we can find the SCB when an abort is requested
		 */
		ccb->ccb_h.ccb_scb_ptr = scb;

		/*
		 * Put all the arguments for the xfer in the scb
		 */
		hscb->control = 0;
		hscb->scsiid = FUNC1(ahd, sim, target_id, our_id);
		hscb->lun = ccb->ccb_h.target_lun;
		if (ccb->ccb_h.func_code == XPT_RESET_DEV) {
			hscb->cdb_len = 0;
			scb->flags |= SCB_DEVICE_RESET;
			hscb->control |= MK_MESSAGE;
			hscb->task_management = SIU_TASKMGMT_LUN_RESET;
			FUNC8(scb, NULL, 0, 0);
		} else {
#ifdef AHD_TARGET_MODE
			if (ccb->ccb_h.func_code == XPT_CONT_TARGET_IO) {
				struct target_data *tdata;

				tdata = &hscb->shared_data.tdata;
				if (ahd->pending_device == lstate)
					scb->flags |= SCB_TARGET_IMMEDIATE;
				hscb->control |= TARGET_SCB;
				tdata->target_phases = 0;
				if ((ccb->ccb_h.flags & CAM_SEND_STATUS) != 0) {
					tdata->target_phases |= SPHASE_PENDING;
					tdata->scsi_status =
					    ccb->csio.scsi_status;
				}
	 			if (ccb->ccb_h.flags & CAM_DIS_DISCONNECT)
					tdata->target_phases |= NO_DISCONNECT;

				tdata->initiator_tag =
				    ahd_htole16(ccb->csio.tag_id);
			}
#endif
			hscb->task_management = 0;
			if (ccb->ccb_h.flags & CAM_TAG_ACTION_VALID)
				hscb->control |= ccb->csio.tag_action;
			
			FUNC19(ahd, sim, &ccb->csio, scb);
		}
		break;
	}
#ifdef AHD_TARGET_MODE
	case XPT_NOTIFY_ACKNOWLEDGE:
	case XPT_IMMEDIATE_NOTIFY:
	{
		struct	   ahd_tmode_tstate *tstate;
		struct	   ahd_tmode_lstate *lstate;
		cam_status status;

		status = ahd_find_tmode_devs(ahd, sim, ccb, &tstate,
					     &lstate, TRUE);

		if (status != CAM_REQ_CMP) {
			ccb->ccb_h.status = status;
			xpt_done(ccb);
			break;
		}
		SLIST_INSERT_HEAD(&lstate->immed_notifies, &ccb->ccb_h,
				  sim_links.sle);
		ccb->ccb_h.status = CAM_REQ_INPROG;
		ahd_send_lstate_events(ahd, lstate);
		break;
	}
	case XPT_EN_LUN:		/* Enable LUN as a target */
		ahd_handle_en_lun(ahd, sim, ccb);
		xpt_done(ccb);
		break;
#endif
	case XPT_ABORT:			/* Abort the specified CCB */
	{
		FUNC7(ahd, sim, ccb);
		break;
	}
	case XPT_SET_TRAN_SETTINGS:
	{
		FUNC18(ahd, FUNC5(ahd, sim),
				      FUNC3(ahd, sim), &ccb->cts);
		FUNC27(ccb);
		break;
	}
	case XPT_GET_TRAN_SETTINGS:
	/* Get default/user set transfer settings for the target */
	{
		FUNC12(ahd, FUNC5(ahd, sim),
				      FUNC3(ahd, sim), &ccb->cts);
		FUNC27(ccb);
		break;
	}
	case XPT_CALC_GEOMETRY:
	{
		FUNC20(&ccb->ccg, ahd->flags & AHD_EXTENDED_TRANS_A);
		FUNC27(ccb);
		break;
	}
	case XPT_RESET_BUS:		/* Reset the specified SCSI bus */
	{
		int  found;
		
		found = FUNC15(ahd, FUNC3(ahd, sim),
					  /*initiate reset*/TRUE);
		if (bootverbose) {
			FUNC29(FUNC4(ahd, sim));
			FUNC25("SCSI bus reset delivered. "
			       "%d SCBs aborted.\n", found);
		}
		ccb->ccb_h.status = CAM_REQ_CMP;
		FUNC27(ccb);
		break;
	}
	case XPT_TERM_IO:		/* Terminate the I/O process */
		/* XXX Implement */
		ccb->ccb_h.status = CAM_REQ_INVALID;
		FUNC27(ccb);
		break;
	case XPT_PATH_INQ:		/* Path routing inquiry */
	{
		struct ccb_pathinq *cpi = &ccb->cpi;
		
		cpi->version_num = 1; /* XXX??? */
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
		cpi->bus_id = FUNC21(sim);
		cpi->base_transfer_speed = 3300;
		FUNC26(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
		FUNC26(cpi->hba_vid, "Adaptec", HBA_IDLEN);
		FUNC26(cpi->dev_name, FUNC22(sim), DEV_IDLEN);
		cpi->unit_number = FUNC24(sim);
		cpi->protocol = PROTO_SCSI;
		cpi->protocol_version = SCSI_REV_2;
		cpi->transport = XPORT_SPI;
		cpi->transport_version = 4;
		cpi->xport_specific.spi.ppr_options = SID_SPI_CLOCK_DT_ST
						    | SID_SPI_IUS
						    | SID_SPI_QAS;
		cpi->ccb_h.status = CAM_REQ_CMP;
		FUNC27(ccb);
		break;
	}
	default:
		ccb->ccb_h.status = CAM_PROVIDE_FAIL;
		FUNC27(ccb);
		break;
	}
}