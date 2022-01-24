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
struct TYPE_8__ {int func_code; void* status; } ;
struct TYPE_7__ {int /*<<< orphan*/  valid; } ;
struct ccb_trans_settings_mmc {int host_f_max; int host_f_min; int host_ocr; } ;
struct TYPE_6__ {struct ccb_trans_settings_mmc mmc; } ;
struct ccb_trans_settings {TYPE_3__ xport_specific; int /*<<< orphan*/  transport_version; void* transport; int /*<<< orphan*/  protocol_version; void* protocol; TYPE_2__ proto_specific; } ;
struct TYPE_5__ {void* status; } ;
struct ccb_pathinq {int version_num; int hba_inquiry; int hba_misc; int initiator_id; int base_transfer_speed; TYPE_1__ ccb_h; int /*<<< orphan*/  transport_version; void* transport; int /*<<< orphan*/  protocol_version; void* protocol; int /*<<< orphan*/  bus_id; int /*<<< orphan*/  unit_number; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  hba_vid; int /*<<< orphan*/  sim_vid; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  max_target; int /*<<< orphan*/  hba_eng_cnt; int /*<<< orphan*/  target_sprt; } ;
union ccb {TYPE_4__ ccb_h; struct ccb_trans_settings cts; struct ccb_pathinq cpi; } ;
struct mmcnull_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  sc_mtx; } ;
struct cam_sim {int dummy; } ;

/* Variables and functions */
 void* CAM_REQ_CMP ; 
 void* CAM_REQ_INVALID ; 
 void* CAM_SEL_TIMEOUT ; 
 int /*<<< orphan*/  DEV_IDLEN ; 
 int /*<<< orphan*/  HBA_IDLEN ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PIM_NOBUSRESET ; 
 int PIM_SEQSCAN ; 
 int PI_SDTR_ABLE ; 
 int PI_TAG_ABLE ; 
 int PI_WIDE_16 ; 
 void* PROTO_MMCSD ; 
 int /*<<< orphan*/  SCSI_REV_0 ; 
 int /*<<< orphan*/  SIM_IDLEN ; 
 void* XPORT_MMCSD ; 
#define  XPT_GET_TRAN_SETTINGS 133 
#define  XPT_MMC_IO 132 
#define  XPT_PATH_INQ 131 
#define  XPT_RESET_BUS 130 
#define  XPT_RESET_DEV 129 
#define  XPT_SET_TRAN_SETTINGS 128 
 int /*<<< orphan*/  FUNC0 (struct cam_sim*) ; 
 char* FUNC1 (struct cam_sim*) ; 
 struct mmcnull_softc* FUNC2 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_sim*,union ccb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 

__attribute__((used)) static void
FUNC9(struct cam_sim *sim, union ccb *ccb)
{
	struct mmcnull_softc *sc;

	sc = FUNC2(sim);
	if (sc == NULL) {
		ccb->ccb_h.status = CAM_SEL_TIMEOUT;
		FUNC8(ccb);
		return;
	}

	FUNC6(&sc->sc_mtx, MA_OWNED);

	FUNC4(sc->dev, "action: func_code %0x\n", ccb->ccb_h.func_code);

	switch (ccb->ccb_h.func_code) {
	case XPT_PATH_INQ:
	{
		struct ccb_pathinq *cpi;

		cpi = &ccb->cpi;
		cpi->version_num = 1;
		cpi->hba_inquiry = PI_SDTR_ABLE | PI_TAG_ABLE | PI_WIDE_16;
		cpi->target_sprt = 0;
		cpi->hba_misc = PIM_NOBUSRESET | PIM_SEQSCAN;
		cpi->hba_eng_cnt = 0;
		cpi->max_target = 0;
		cpi->max_lun = 0;
		cpi->initiator_id = 1;
		FUNC7(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
		FUNC7(cpi->hba_vid, "FreeBSD Foundation", HBA_IDLEN);
		FUNC7(cpi->dev_name, FUNC1(sim), DEV_IDLEN);
		cpi->unit_number = FUNC3(sim);
		cpi->bus_id = FUNC0(sim);
		cpi->base_transfer_speed = 100; /* XXX WTF? */
		cpi->protocol = PROTO_MMCSD;
		cpi->protocol_version = SCSI_REV_0;
		cpi->transport = XPORT_MMCSD;
		cpi->transport_version = 0;

		cpi->ccb_h.status = CAM_REQ_CMP;
		break;
	}
	case XPT_GET_TRAN_SETTINGS:
	{
		struct ccb_trans_settings *cts = &ccb->cts;
		struct ccb_trans_settings_mmc *mcts;
		mcts = &ccb->cts.proto_specific.mmc;

                FUNC4(sc->dev, "Got XPT_GET_TRAN_SETTINGS\n");

                cts->protocol = PROTO_MMCSD;
                cts->protocol_version = 0;
                cts->transport = XPORT_MMCSD;
                cts->transport_version = 0;
                cts->xport_specific.valid = 0;
		mcts->host_f_max = 12000000;
		mcts->host_f_min = 200000;
		mcts->host_ocr = 1; /* Fix this */
                ccb->ccb_h.status = CAM_REQ_CMP;
                break;
        }
	case XPT_SET_TRAN_SETTINGS:
		FUNC4(sc->dev, "Got XPT_SET_TRAN_SETTINGS, should update IOS...\n");
		ccb->ccb_h.status = CAM_REQ_CMP;
		break;
	case XPT_RESET_BUS:
		FUNC4(sc->dev, "Got XPT_RESET_BUS, ACK it...\n");
		ccb->ccb_h.status = CAM_REQ_CMP;
                break;
	case XPT_MMC_IO:
		/*
                 * Here is the HW-dependent part of
		 * sending the command to the underlying h/w
		 * At some point in the future an interrupt comes.
		 * Then the request will be marked as completed.
		 */
		FUNC4(sc->dev, "Got XPT_MMC_IO\n");
		FUNC5(sim, ccb);
		return;
		break;
        case XPT_RESET_DEV:
                /* This is sent by `camcontrol reset`*/
                FUNC4(sc->dev, "Got XPT_RESET_DEV\n");
		ccb->ccb_h.status = CAM_REQ_CMP;
                break;
	default:
		FUNC4(sc->dev, "Func code %d is unknown\n", ccb->ccb_h.func_code);
		ccb->ccb_h.status = CAM_REQ_INVALID;
		break;
	}
	FUNC8(ccb);
	return;
}