#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int func_code; int status; int /*<<< orphan*/  path; int /*<<< orphan*/  target_lun; int /*<<< orphan*/  target_id; } ;
struct TYPE_7__ {void* status; } ;
struct ccb_pathinq {int version_num; int hba_misc; int initiator_id; int base_transfer_speed; int transport_version; TYPE_3__ ccb_h; int /*<<< orphan*/  maxio; void* protocol_version; void* protocol; void* transport; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  hba_vid; int /*<<< orphan*/  sim_vid; int /*<<< orphan*/  unit_number; int /*<<< orphan*/  bus_id; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  max_target; int /*<<< orphan*/  vuhba_flags; int /*<<< orphan*/  hba_eng_cnt; int /*<<< orphan*/  hba_inquiry; int /*<<< orphan*/  target_sprt; } ;
struct TYPE_6__ {int /*<<< orphan*/  valid; } ;
struct TYPE_5__ {int /*<<< orphan*/  valid; } ;
struct ccb_trans_settings {int transport_version; TYPE_2__ xport_specific; TYPE_1__ proto_specific; void* transport; void* protocol_version; void* protocol; } ;
union ccb {TYPE_4__ ccb_h; struct ccb_pathinq cpi; int /*<<< orphan*/  ccg; struct ccb_trans_settings cts; } ;
struct ps3cdrom_xfer {union ccb* x_ccb; int /*<<< orphan*/  x_dmamap; } ;
struct ps3cdrom_softc {int /*<<< orphan*/  sc_free_xferq; int /*<<< orphan*/  sc_dmatag; int /*<<< orphan*/  sc_dev; } ;
struct cam_sim {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int CAM_FUNC_NOTAVAIL ; 
 int CAM_LUN_INVALID ; 
 void* CAM_REQ_CMP ; 
 int CAM_REQ_INPROG ; 
 int CAM_REQ_INVALID ; 
 int CAM_SCSI_STATUS_ERROR ; 
 int CAM_STATUS_MASK ; 
 int CAM_TID_INVALID ; 
 int /*<<< orphan*/  DEV_IDLEN ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  HBA_IDLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PIM_NOBUSRESET ; 
 int PIM_NO_6_BYTE ; 
 int PIM_SEQSCAN ; 
 int /*<<< orphan*/  PI_SDTR_ABLE ; 
 void* PROTO_SCSI ; 
 int /*<<< orphan*/  FUNC2 (struct ps3cdrom_softc*) ; 
 void* SCSI_REV_2 ; 
 int /*<<< orphan*/  SIM_IDLEN ; 
 struct ps3cdrom_xfer* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ps3cdrom_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ps3cdrom_xfer*,int /*<<< orphan*/ ) ; 
 void* XPORT_SPI ; 
#define  XPT_CALC_GEOMETRY 134 
#define  XPT_GET_TRAN_SETTINGS 133 
#define  XPT_PATH_INQ 132 
#define  XPT_RESET_BUS 131 
#define  XPT_RESET_DEV 130 
#define  XPT_SCSI_IO 129 
#define  XPT_SET_TRAN_SETTINGS 128 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ccb*,int /*<<< orphan*/ ,struct ps3cdrom_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct cam_sim*) ; 
 char* FUNC10 (struct cam_sim*) ; 
 scalar_t__ FUNC11 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC12 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ps3cdrom_transfer ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  x_queue ; 
 int /*<<< orphan*/  FUNC15 (union ccb*) ; 

__attribute__((used)) static void
FUNC16(struct cam_sim *sim, union ccb *ccb)
{
	struct ps3cdrom_softc *sc = (struct ps3cdrom_softc *)FUNC11(sim);
	device_t dev = sc->sc_dev;
	struct ps3cdrom_xfer *xp;
	int err;

	FUNC2(sc);

	FUNC0(ccb->ccb_h.path, CAM_DEBUG_TRACE,
	   ("function code 0x%02x\n", ccb->ccb_h.func_code));

	switch (ccb->ccb_h.func_code) {
	case XPT_SCSI_IO:
		if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_INPROG)
			break;

		if(ccb->ccb_h.target_id > 0) {
			ccb->ccb_h.status = CAM_TID_INVALID;
			break;
		}

		if(ccb->ccb_h.target_lun > 0) {
			ccb->ccb_h.status = CAM_LUN_INVALID;
			break;
		}

		xp = FUNC3(&sc->sc_free_xferq);
		
		FUNC1(xp != NULL, ("no free transfers"));

		xp->x_ccb = ccb;

		FUNC5(&sc->sc_free_xferq, xp, x_queue);

		err = FUNC6(sc->sc_dmatag, xp->x_dmamap,
		    ccb, ps3cdrom_transfer, xp, 0);
		if (err && err != EINPROGRESS) {
			FUNC13(dev, "Could not load DMA map (%d)\n",
			    err);

			xp->x_ccb = NULL;
			FUNC4(&sc->sc_free_xferq, xp, x_queue);
			ccb->ccb_h.status = CAM_SCSI_STATUS_ERROR;
			break;
		}
		return;
	case XPT_SET_TRAN_SETTINGS:
		ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
		break;
	case XPT_GET_TRAN_SETTINGS:
	{
		struct ccb_trans_settings *cts = &ccb->cts;

		cts->protocol = PROTO_SCSI;
		cts->protocol_version = SCSI_REV_2;
		cts->transport = XPORT_SPI;
		cts->transport_version = 2;
		cts->proto_specific.valid = 0;
		cts->xport_specific.valid = 0;
		ccb->ccb_h.status = CAM_REQ_CMP;
		break;
	}
	case XPT_RESET_BUS:
	case XPT_RESET_DEV:
		ccb->ccb_h.status = CAM_REQ_CMP;
		break;
	case XPT_CALC_GEOMETRY:
		FUNC8(&ccb->ccg, 1);
		break;
	case XPT_PATH_INQ:
	{
		struct ccb_pathinq *cpi = &ccb->cpi;

		cpi->version_num = 1;
		cpi->hba_inquiry = 0;
		cpi->target_sprt = 0;
		cpi->hba_inquiry = PI_SDTR_ABLE;
		cpi->hba_misc = PIM_NOBUSRESET | PIM_SEQSCAN | PIM_NO_6_BYTE;
		cpi->hba_eng_cnt = 0;
		FUNC7(cpi->vuhba_flags, sizeof(cpi->vuhba_flags));
		cpi->max_target = 0;
		cpi->max_lun = 0;
		cpi->initiator_id = 7;
		cpi->bus_id = FUNC9(sim);
		cpi->unit_number = FUNC12(sim);
		cpi->base_transfer_speed = 150000;
		FUNC14(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
		FUNC14(cpi->hba_vid, "Sony", HBA_IDLEN);
		FUNC14(cpi->dev_name, FUNC10(sim), DEV_IDLEN);
		cpi->transport = XPORT_SPI;
		cpi->transport_version = 2;
		cpi->protocol = PROTO_SCSI;
		cpi->protocol_version = SCSI_REV_2;
		cpi->maxio = PAGE_SIZE;
		cpi->ccb_h.status = CAM_REQ_CMP;
		break;
	}
	default:
		FUNC0(ccb->ccb_h.path, CAM_DEBUG_TRACE,
		    ("unsupported function code 0x%02x\n",
		    ccb->ccb_h.func_code));
		ccb->ccb_h.status = CAM_REQ_INVALID;
		break;
	}

	FUNC15(ccb);
}