#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef  int /*<<< orphan*/  uint32_t ;
struct mfip_softc {scalar_t__ state; struct cam_sim* sim; } ;
struct mfi_softc {int /*<<< orphan*/  mfi_io_lock; int /*<<< orphan*/  mfi_dev; } ;
struct cam_sim {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  Giant ; 
 scalar_t__ MFIP_STATE_DETACH ; 
 scalar_t__ MFIP_STATE_NONE ; 
 scalar_t__ MFIP_STATE_RESCAN ; 
 int /*<<< orphan*/  FUNC0 (struct cam_sim*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct mfip_softc* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 union ccb* FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 
 int /*<<< orphan*/  FUNC9 (union ccb*) ; 

__attribute__((used)) static void
FUNC10(struct mfi_softc *sc, uint32_t tid)
{
	union ccb *ccb;
	struct mfip_softc *camsc;
	struct cam_sim *sim;
	device_t mfip_dev;

	FUNC4(&Giant);
	mfip_dev = FUNC1(sc->mfi_dev, "mfip", -1);
	FUNC5(&Giant);
	if (mfip_dev == NULL) {
		FUNC3(sc->mfi_dev, "Couldn't find mfip child device!\n");
		return;
	}

	FUNC4(&sc->mfi_io_lock);
	camsc = FUNC2(mfip_dev);
	if (camsc->state == MFIP_STATE_DETACH) {
		FUNC5(&sc->mfi_io_lock);
		return;
	}
	camsc->state = MFIP_STATE_RESCAN;

	ccb = FUNC6();
	if (ccb == NULL) {
		FUNC5(&sc->mfi_io_lock);
		FUNC3(sc->mfi_dev,
		    "Cannot allocate ccb for bus rescan.\n");
		return;
	}

	sim = camsc->sim;
	if (FUNC7(&ccb->ccb_h.path, NULL, FUNC0(sim),
	    tid, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC8(ccb);
		FUNC5(&sc->mfi_io_lock);
		FUNC3(sc->mfi_dev,
		    "Cannot create path for bus rescan.\n");
		return;
	}
	FUNC9(ccb);

	camsc->state = MFIP_STATE_NONE;
	FUNC5(&sc->mfi_io_lock);
}