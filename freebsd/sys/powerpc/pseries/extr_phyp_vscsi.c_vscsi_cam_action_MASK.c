#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int func_code; void* status; } ;
struct TYPE_8__ {int /*<<< orphan*/  valid; } ;
struct TYPE_7__ {int /*<<< orphan*/  valid; } ;
struct TYPE_9__ {TYPE_3__ xport_specific; TYPE_2__ proto_specific; int /*<<< orphan*/  transport_version; void* transport; void* protocol_version; void* protocol; } ;
struct TYPE_6__ {void* status; } ;
struct ccb_pathinq {int version_num; int base_transfer_speed; TYPE_1__ ccb_h; void* protocol_version; void* protocol; int /*<<< orphan*/  transport_version; void* transport; int /*<<< orphan*/  bus_id; int /*<<< orphan*/  unit_number; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  hba_vid; int /*<<< orphan*/  sim_vid; int /*<<< orphan*/  initiator_id; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  max_target; int /*<<< orphan*/  hba_eng_cnt; int /*<<< orphan*/  target_sprt; int /*<<< orphan*/  hba_misc; int /*<<< orphan*/  hba_inquiry; } ;
union ccb {TYPE_5__ ccb_h; TYPE_4__ cts; struct ccb_pathinq cpi; } ;
struct vscsi_xfer {int /*<<< orphan*/  dmamap; union ccb* ccb; } ;
struct vscsi_softc {int /*<<< orphan*/  data_tag; int /*<<< orphan*/  active_xferq; int /*<<< orphan*/  free_xferq; int /*<<< orphan*/  io_lock; } ;
struct cam_sim {int dummy; } ;

/* Variables and functions */
 void* CAM_FUNC_NOTAVAIL ; 
 void* CAM_REQ_CMP ; 
 void* CAM_REQ_INPROG ; 
 void* CAM_REQ_INVALID ; 
 int /*<<< orphan*/  DEV_IDLEN ; 
 int /*<<< orphan*/  HBA_IDLEN ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  PIM_EXTLUNS ; 
 int /*<<< orphan*/  PI_TAG_ABLE ; 
 void* PROTO_SCSI ; 
 void* SCSI_REV_SPC4 ; 
 int /*<<< orphan*/  SIM_IDLEN ; 
 struct vscsi_xfer* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct vscsi_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct vscsi_xfer*,int /*<<< orphan*/ ) ; 
 void* XPORT_SRP ; 
#define  XPT_GET_TRAN_SETTINGS 133 
#define  XPT_PATH_INQ 132 
#define  XPT_RESET_BUS 131 
#define  XPT_RESET_DEV 130 
#define  XPT_SCSI_IO 129 
#define  XPT_SET_TRAN_SETTINGS 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ccb*,int /*<<< orphan*/ ,struct vscsi_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_sim*) ; 
 char* FUNC5 (struct cam_sim*) ; 
 struct vscsi_softc* FUNC6 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  queue ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vscsi_scsi_command ; 
 int /*<<< orphan*/  FUNC11 (struct vscsi_softc*,union ccb*) ; 
 int /*<<< orphan*/  FUNC12 (union ccb*) ; 

__attribute__((used)) static void
FUNC13(struct cam_sim *sim, union ccb *ccb)
{
	struct vscsi_softc *sc = FUNC6(sim);

	FUNC8(&sc->io_lock, MA_OWNED);

	switch (ccb->ccb_h.func_code) {
	case XPT_PATH_INQ:
	{
		struct ccb_pathinq *cpi = &ccb->cpi;

		cpi->version_num = 1;
		cpi->hba_inquiry = PI_TAG_ABLE;
		cpi->hba_misc = PIM_EXTLUNS;
		cpi->target_sprt = 0;
		cpi->hba_eng_cnt = 0;
		cpi->max_target = 0;
		cpi->max_lun = 0;
		cpi->initiator_id = ~0;
		FUNC10(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
		FUNC10(cpi->hba_vid, "IBM", HBA_IDLEN);
		FUNC10(cpi->dev_name, FUNC5(sim), DEV_IDLEN);
		cpi->unit_number = FUNC7(sim);
		cpi->bus_id = FUNC4(sim);
		cpi->base_transfer_speed = 150000;
		cpi->transport = XPORT_SRP;
		cpi->transport_version = 0;
		cpi->protocol = PROTO_SCSI;
		cpi->protocol_version = SCSI_REV_SPC4;
		cpi->ccb_h.status = CAM_REQ_CMP;
		break;
	}
	case XPT_RESET_BUS:
		ccb->ccb_h.status = CAM_REQ_CMP;
		break;
	case XPT_RESET_DEV:
		ccb->ccb_h.status = CAM_REQ_INPROG;
		FUNC11(sc, ccb);
		return;
	case XPT_GET_TRAN_SETTINGS:
		ccb->cts.protocol = PROTO_SCSI;
		ccb->cts.protocol_version = SCSI_REV_SPC4;
		ccb->cts.transport = XPORT_SRP;
		ccb->cts.transport_version = 0;
		ccb->cts.proto_specific.valid = 0;
		ccb->cts.xport_specific.valid = 0;
		ccb->ccb_h.status = CAM_REQ_CMP;
		break;
	case XPT_SET_TRAN_SETTINGS:
		ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
		break;
	case XPT_SCSI_IO:
	{
		struct vscsi_xfer *xp;

		ccb->ccb_h.status = CAM_REQ_INPROG;

		xp = FUNC0(&sc->free_xferq);
		if (xp == NULL)
			FUNC9("SCSI queue flooded");
		xp->ccb = ccb;
		FUNC2(&sc->free_xferq, xp, queue);
		FUNC1(&sc->active_xferq, xp, queue);
		FUNC3(sc->data_tag, xp->dmamap,
		    ccb, vscsi_scsi_command, xp, 0);

		return;
	}
	default:
		ccb->ccb_h.status = CAM_REQ_INVALID;
		break;
	}

	FUNC12(ccb);
	return;
}