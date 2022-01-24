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
struct mfip_softc {scalar_t__ state; int /*<<< orphan*/ * devq; TYPE_1__* mfi_sc; int /*<<< orphan*/ * sim; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  mfi_io_lock; int /*<<< orphan*/ * mfi_cam_rescan_cb; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MFIP_STATE_DETACH ; 
 scalar_t__ MFIP_STATE_RESCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mfip_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct mfip_softc *sc;

	sc = FUNC3(dev);
	if (sc == NULL)
		return (EINVAL);

	FUNC4(&sc->mfi_sc->mfi_io_lock);
	if (sc->state == MFIP_STATE_RESCAN) {
		FUNC5(&sc->mfi_sc->mfi_io_lock);
		return (EBUSY);
	}
	sc->state = MFIP_STATE_DETACH;
	FUNC5(&sc->mfi_sc->mfi_io_lock);

	sc->mfi_sc->mfi_cam_rescan_cb = NULL;

	if (sc->sim != NULL) {
		FUNC4(&sc->mfi_sc->mfi_io_lock);
		FUNC6(FUNC1(sc->sim));
		FUNC0(sc->sim, FALSE);
		sc->sim = NULL;
		FUNC5(&sc->mfi_sc->mfi_io_lock);
	}

	if (sc->devq != NULL) {
		FUNC2(sc->devq);
		sc->devq = NULL;
	}

	return (0);
}