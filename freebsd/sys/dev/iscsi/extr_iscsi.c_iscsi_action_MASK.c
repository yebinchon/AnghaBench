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
struct TYPE_9__ {void* status; } ;
struct ccb_trans_settings_scsi {int /*<<< orphan*/  flags; int /*<<< orphan*/  valid; } ;
struct TYPE_8__ {struct ccb_trans_settings_scsi scsi; } ;
struct ccb_trans_settings {TYPE_4__ ccb_h; int /*<<< orphan*/  transport_version; void* transport; void* protocol_version; void* protocol; TYPE_3__ proto_specific; } ;
struct TYPE_7__ {void* status; } ;
struct ccb_pathinq {int version_num; int max_lun; int base_transfer_speed; TYPE_2__ ccb_h; int /*<<< orphan*/  maxio; void* protocol_version; void* protocol; int /*<<< orphan*/  transport_version; void* transport; int /*<<< orphan*/  bus_id; int /*<<< orphan*/  unit_number; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  hba_vid; int /*<<< orphan*/  sim_vid; int /*<<< orphan*/  initiator_id; int /*<<< orphan*/  max_target; int /*<<< orphan*/  hba_eng_cnt; int /*<<< orphan*/  hba_misc; int /*<<< orphan*/  target_sprt; int /*<<< orphan*/  hba_inquiry; } ;
union ccb {TYPE_5__ ccb_h; int /*<<< orphan*/  ccg; struct ccb_trans_settings cts; struct ccb_pathinq cpi; } ;
struct iscsi_session {int is_connected; TYPE_1__* is_conn; scalar_t__ is_terminating; } ;
struct cam_sim {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ic_unmapped; } ;

/* Variables and functions */
 void* CAM_DEV_NOT_THERE ; 
 void* CAM_FUNC_NOTAVAIL ; 
 void* CAM_REQ_CMP ; 
 int /*<<< orphan*/  CTS_SCSI_FLAGS_TAG_ENB ; 
 int /*<<< orphan*/  CTS_SCSI_VALID_TQ ; 
 int /*<<< orphan*/  DEV_IDLEN ; 
 int /*<<< orphan*/  HBA_IDLEN ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  MAXPHYS ; 
 int /*<<< orphan*/  PIM_EXTLUNS ; 
 int /*<<< orphan*/  PIM_UNMAPPED ; 
 int /*<<< orphan*/  PI_TAG_ABLE ; 
 void* PROTO_SCSI ; 
 void* SCSI_REV_SPC3 ; 
 int /*<<< orphan*/  SIM_IDLEN ; 
 void* XPORT_ISCSI ; 
#define  XPT_ABORT 134 
#define  XPT_CALC_GEOMETRY 133 
#define  XPT_GET_TRAN_SETTINGS 132 
#define  XPT_PATH_INQ 131 
#define  XPT_RESET_BUS 130 
#define  XPT_SCSI_IO 129 
#define  XPT_TERM_IO 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_sim*) ; 
 char* FUNC5 (struct cam_sim*) ; 
 struct iscsi_session* FUNC6 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_sim*) ; 
 scalar_t__ fail_on_disconnection ; 
 int /*<<< orphan*/  FUNC8 (struct iscsi_session*,union ccb*) ; 
 int /*<<< orphan*/  FUNC9 (struct iscsi_session*,union ccb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (union ccb*) ; 

__attribute__((used)) static void
FUNC12(struct cam_sim *sim, union ccb *ccb)
{
	struct iscsi_session *is;

	is = FUNC6(sim);

	FUNC1(is);

	if (is->is_terminating ||
	    (is->is_connected == false && fail_on_disconnection)) {
		ccb->ccb_h.status = CAM_DEV_NOT_THERE;
		FUNC11(ccb);
		return;
	}

	switch (ccb->ccb_h.func_code) {
	case XPT_PATH_INQ:
	{
		struct ccb_pathinq *cpi = &ccb->cpi;

		cpi->version_num = 1;
		cpi->hba_inquiry = PI_TAG_ABLE;
		cpi->target_sprt = 0;
		cpi->hba_misc = PIM_EXTLUNS;
		/*
		 * XXX: It shouldn't ever be NULL; this could be turned
		 *      into a KASSERT eventually.
		 */
		if (is->is_conn == NULL)
			FUNC2("NULL conn");
		else if (is->is_conn->ic_unmapped)
			cpi->hba_misc |= PIM_UNMAPPED;
		cpi->hba_eng_cnt = 0;
		cpi->max_target = 0;
		/*
		 * Note that the variable below is only relevant for targets
		 * that don't claim compliance with anything above SPC2, which
		 * means they don't support REPORT_LUNS.
		 */
		cpi->max_lun = 255;
		cpi->initiator_id = ~0;
		FUNC10(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
		FUNC10(cpi->hba_vid, "iSCSI", HBA_IDLEN);
		FUNC10(cpi->dev_name, FUNC5(sim), DEV_IDLEN);
		cpi->unit_number = FUNC7(sim);
		cpi->bus_id = FUNC4(sim);
		cpi->base_transfer_speed = 150000; /* XXX */
		cpi->transport = XPORT_ISCSI;
		cpi->transport_version = 0;
		cpi->protocol = PROTO_SCSI;
		cpi->protocol_version = SCSI_REV_SPC3;
		cpi->maxio = MAXPHYS;
		cpi->ccb_h.status = CAM_REQ_CMP;
		break;
	}
	case XPT_GET_TRAN_SETTINGS:
	{
		struct ccb_trans_settings	*cts;
		struct ccb_trans_settings_scsi	*scsi;

		cts = &ccb->cts;
		scsi = &cts->proto_specific.scsi;

		cts->protocol = PROTO_SCSI;
		cts->protocol_version = SCSI_REV_SPC3;
		cts->transport = XPORT_ISCSI;
		cts->transport_version = 0;
		scsi->valid = CTS_SCSI_VALID_TQ;
		scsi->flags = CTS_SCSI_FLAGS_TAG_ENB;
		cts->ccb_h.status = CAM_REQ_CMP;
		break;
	}
	case XPT_CALC_GEOMETRY:
		FUNC3(&ccb->ccg, /*extended*/1);
		ccb->ccb_h.status = CAM_REQ_CMP;
		break;
#if 0
	/*
	 * XXX: What's the point?
	 */
	case XPT_RESET_BUS:
	case XPT_TERM_IO:
		ISCSI_SESSION_DEBUG(is, "faking success for reset, abort, or term_io");
		ccb->ccb_h.status = CAM_REQ_CMP;
		break;
#endif
	case XPT_ABORT:
		FUNC8(is, ccb);
		return;
	case XPT_SCSI_IO:
		FUNC9(is, ccb);
		return;
	default:
#if 0
		ISCSI_SESSION_DEBUG(is, "got unsupported code 0x%x", ccb->ccb_h.func_code);
#endif
		ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
		break;
	}
	FUNC11(ccb);
}