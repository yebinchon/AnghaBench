#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int func_code; int /*<<< orphan*/  status; int /*<<< orphan*/  target_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  status; } ;
struct ccb_pathinq {int version_num; int base_transfer_speed; int transport_version; TYPE_1__ ccb_h; int /*<<< orphan*/  protocol_version; int /*<<< orphan*/  protocol; int /*<<< orphan*/  transport; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  hba_vid; int /*<<< orphan*/  sim_vid; void* initiator_id; int /*<<< orphan*/  bus_id; int /*<<< orphan*/  unit_number; int /*<<< orphan*/  max_lun; void* max_target; int /*<<< orphan*/  hba_eng_cnt; int /*<<< orphan*/  hba_misc; int /*<<< orphan*/  target_sprt; int /*<<< orphan*/  hba_inquiry; } ;
union ccb {TYPE_2__ ccb_h; struct ccb_pathinq cpi; int /*<<< orphan*/  ccg; } ;
struct cam_sim {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  vbus; } ;
typedef  TYPE_3__* PVBUS_EXT ;
typedef  int /*<<< orphan*/  PVBUS ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_FUNC_NOTAVAIL ; 
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_REQ_INVALID ; 
 int /*<<< orphan*/  DEV_IDLEN ; 
 int /*<<< orphan*/  HBA_IDLEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PIM_NOBUSRESET ; 
 int /*<<< orphan*/  PI_SDTR_ABLE ; 
 int /*<<< orphan*/  PROTO_SCSI ; 
 int /*<<< orphan*/  SCSI_REV_2 ; 
 int /*<<< orphan*/  SIM_IDLEN ; 
 int /*<<< orphan*/  XPORT_SPI ; 
#define  XPT_CALC_GEOMETRY 133 
#define  XPT_GET_TRAN_SETTINGS 132 
#define  XPT_PATH_INQ 131 
#define  XPT_RESET_BUS 130 
#define  XPT_SCSI_IO 129 
#define  XPT_SET_TRAN_SETTINGS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_sim*) ; 
 char* FUNC3 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,union ccb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 void* osm_max_targets ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (union ccb*) ; 

__attribute__((used)) static void FUNC11(struct cam_sim *sim, union ccb *ccb)
{
	PVBUS_EXT vbus_ext = (PVBUS_EXT)FUNC4(sim);

	FUNC0(("hpt_action(fn=%d, id=%d)", ccb->ccb_h.func_code, ccb->ccb_h.target_id));

	FUNC6(vbus_ext);
	switch (ccb->ccb_h.func_code) {
	
	case XPT_SCSI_IO:
		FUNC7(vbus_ext, ccb);
		return;

	case XPT_RESET_BUS:
		FUNC8((PVBUS)vbus_ext->vbus);
		break;

	case XPT_GET_TRAN_SETTINGS:
	case XPT_SET_TRAN_SETTINGS:
		ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
		break;

	case XPT_CALC_GEOMETRY:
		FUNC1(&ccb->ccg, 1);
		break;

	case XPT_PATH_INQ:
	{
		struct ccb_pathinq *cpi = &ccb->cpi;

		cpi->version_num = 1;
		cpi->hba_inquiry = PI_SDTR_ABLE;
		cpi->target_sprt = 0;
		cpi->hba_misc = PIM_NOBUSRESET;
		cpi->hba_eng_cnt = 0;
		cpi->max_target = osm_max_targets;
		cpi->max_lun = 0;
		cpi->unit_number = FUNC5(sim);
		cpi->bus_id = FUNC2(sim);
		cpi->initiator_id = osm_max_targets;
		cpi->base_transfer_speed = 3300;

		FUNC9(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
		FUNC9(cpi->hba_vid, "HPT   ", HBA_IDLEN);
		FUNC9(cpi->dev_name, FUNC3(sim), DEV_IDLEN);
		cpi->transport = XPORT_SPI;
		cpi->transport_version = 2;
		cpi->protocol = PROTO_SCSI;
		cpi->protocol_version = SCSI_REV_2;
		cpi->ccb_h.status = CAM_REQ_CMP;
		break;
	}

	default:
		ccb->ccb_h.status = CAM_REQ_INVALID;
		break;
	}

	FUNC10(ccb);
	return;
}