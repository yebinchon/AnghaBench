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
struct TYPE_2__ {int /*<<< orphan*/  target_id; struct pvscsi_softc* ccb_pvscsi_sc; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct pvscsi_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;
struct pvscsi_hcb {int recovery; int /*<<< orphan*/  callout; union ccb* ccb; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int PVSCSI_ABORT_TIMEOUT ; 
#define  PVSCSI_HCB_ABORT 131 
#define  PVSCSI_HCB_BUS_RESET 130 
#define  PVSCSI_HCB_DEVICE_RESET 129 
#define  PVSCSI_HCB_NONE 128 
 int PVSCSI_RESET_TIMEOUT ; 
 int SBT_1S ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void (*) (void*),struct pvscsi_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct pvscsi_hcb*,union ccb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pvscsi_softc*,int /*<<< orphan*/ ,union ccb*) ; 
 int /*<<< orphan*/  FUNC4 (struct pvscsi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct pvscsi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct pvscsi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pvscsi_softc*) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct pvscsi_hcb *hcb;
	struct pvscsi_softc *sc;
	union ccb *ccb;

	hcb = arg;
	ccb = hcb->ccb;

	if (ccb == NULL) {
		/* Already completed */
		return;
	}

	sc = ccb->ccb_h.ccb_pvscsi_sc;
	FUNC2(&sc->lock, MA_OWNED);

	FUNC1(sc->dev, "Command timed out hcb=%p ccb=%p.\n", hcb, ccb);

	switch (hcb->recovery) {
	case PVSCSI_HCB_NONE:
		hcb->recovery = PVSCSI_HCB_ABORT;
		FUNC3(sc, ccb->ccb_h.target_id, ccb);
		FUNC0(&hcb->callout, PVSCSI_ABORT_TIMEOUT * SBT_1S,
		    0, pvscsi_timeout, hcb, 0);
		break;
	case PVSCSI_HCB_ABORT:
		hcb->recovery = PVSCSI_HCB_DEVICE_RESET;
		FUNC7(sc);
		FUNC6(sc, ccb->ccb_h.target_id);
		FUNC0(&hcb->callout, PVSCSI_RESET_TIMEOUT * SBT_1S,
		    0, pvscsi_timeout, hcb, 0);
		break;
	case PVSCSI_HCB_DEVICE_RESET:
		hcb->recovery = PVSCSI_HCB_BUS_RESET;
		FUNC7(sc);
		FUNC5(sc);
		FUNC0(&hcb->callout, PVSCSI_RESET_TIMEOUT * SBT_1S,
		    0, pvscsi_timeout, hcb, 0);
		break;
	case PVSCSI_HCB_BUS_RESET:
		FUNC7(sc);
		FUNC4(sc);
		break;
	};
}