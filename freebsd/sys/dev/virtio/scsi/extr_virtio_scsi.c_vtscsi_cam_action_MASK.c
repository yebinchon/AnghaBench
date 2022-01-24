#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ccb_hdr {int func_code; int /*<<< orphan*/  status; } ;
union ccb {int /*<<< orphan*/  ccg; struct ccb_hdr ccb_h; } ;
struct vtscsi_softc {int vtscsi_flags; } ;
struct cam_sim {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_FUNC_NOTAVAIL ; 
 int /*<<< orphan*/  CAM_NO_HBA ; 
 int /*<<< orphan*/  CAM_REQ_INVALID ; 
 int /*<<< orphan*/  VTSCSI_ERROR ; 
 int VTSCSI_FLAG_DETACH ; 
 int /*<<< orphan*/  FUNC0 (struct vtscsi_softc*) ; 
#define  XPT_ABORT 135 
#define  XPT_CALC_GEOMETRY 134 
#define  XPT_GET_TRAN_SETTINGS 133 
#define  XPT_PATH_INQ 132 
#define  XPT_RESET_BUS 131 
#define  XPT_RESET_DEV 130 
#define  XPT_SCSI_IO 129 
#define  XPT_SET_TRAN_SETTINGS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct vtscsi_softc* FUNC2 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtscsi_softc*,union ccb*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtscsi_softc*,union ccb*) ; 
 int /*<<< orphan*/  FUNC5 (struct vtscsi_softc*,struct cam_sim*,union ccb*) ; 
 int /*<<< orphan*/  FUNC6 (struct vtscsi_softc*,union ccb*) ; 
 int /*<<< orphan*/  FUNC7 (struct vtscsi_softc*,union ccb*) ; 
 int /*<<< orphan*/  FUNC8 (struct vtscsi_softc*,struct cam_sim*,union ccb*) ; 
 int /*<<< orphan*/  FUNC9 (struct vtscsi_softc*,int /*<<< orphan*/ ,char*,union ccb*,int) ; 
 int /*<<< orphan*/  FUNC10 (union ccb*) ; 

__attribute__((used)) static void
FUNC11(struct cam_sim *sim, union ccb *ccb)
{
	struct vtscsi_softc *sc;
	struct ccb_hdr *ccbh;

	sc = FUNC2(sim);
	ccbh = &ccb->ccb_h;

	FUNC0(sc);

	if (sc->vtscsi_flags & VTSCSI_FLAG_DETACH) {
		/*
		 * The VTSCSI_MTX is briefly dropped between setting
		 * VTSCSI_FLAG_DETACH and deregistering with CAM, so
		 * drop any CCBs that come in during that window.
		 */
		ccbh->status = CAM_NO_HBA;
		FUNC10(ccb);
		return;
	}

	switch (ccbh->func_code) {
	case XPT_SCSI_IO:
		FUNC8(sc, sim, ccb);
		break;

	case XPT_SET_TRAN_SETTINGS:
		ccbh->status = CAM_FUNC_NOTAVAIL;
		FUNC10(ccb);
		break;

	case XPT_GET_TRAN_SETTINGS:
		FUNC4(sc, ccb);
		break;

	case XPT_RESET_BUS:
		FUNC6(sc, ccb);
		break;

	case XPT_RESET_DEV:
		FUNC7(sc, ccb);
		break;

	case XPT_ABORT:
		FUNC3(sc, ccb);
		break;

	case XPT_CALC_GEOMETRY:
		FUNC1(&ccb->ccg, 1);
		FUNC10(ccb);
		break;

	case XPT_PATH_INQ:
		FUNC5(sc, sim, ccb);
		break;

	default:
		FUNC9(sc, VTSCSI_ERROR,
		    "invalid ccb=%p func=%#x\n", ccb, ccbh->func_code);

		ccbh->status = CAM_REQ_INVALID;
		FUNC10(ccb);
		break;
	}
}