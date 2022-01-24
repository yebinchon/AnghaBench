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
struct mps_softc {scalar_t__ disable_msix; int max_msix; scalar_t__ disable_msi; int msi_msgs; int /*<<< orphan*/  mps_flags; int /*<<< orphan*/  mps_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPS_FLAGS_INTX ; 
 int /*<<< orphan*/  MPS_FLAGS_MSI ; 
 int /*<<< orphan*/  MPS_INIT ; 
 int MPS_MSIX_MAX ; 
 int MPS_MSI_MAX ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (struct mps_softc*,int) ; 
 int FUNC2 (struct mps_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mps_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct mps_softc *sc)
{
	device_t dev;
	int error, msgs;

	dev = sc->mps_dev;
	error = 0;
	msgs = 0;

	if (sc->disable_msix == 0) {
		msgs = FUNC5(dev);
		FUNC3(sc, MPS_INIT, "Counted %d MSI-X messages\n", msgs);
		msgs = FUNC0(msgs, sc->max_msix);
		msgs = FUNC0(msgs, MPS_MSIX_MAX);
		msgs = FUNC0(msgs, 1);	/* XXX */
		if (msgs != 0) {
			FUNC3(sc, MPS_INIT, "Attempting to allocate %d "
			    "MSI-X messages\n", msgs);
			error = FUNC2(sc, msgs);
		}
	}
	if (((error != 0) || (msgs == 0)) && (sc->disable_msi == 0)) {
		msgs = FUNC4(dev);
		FUNC3(sc, MPS_INIT, "Counted %d MSI messages\n", msgs);
		msgs = FUNC0(msgs, MPS_MSI_MAX);
		if (msgs != 0) {
			FUNC3(sc, MPS_INIT, "Attempting to allocate %d "
			    "MSI messages\n", MPS_MSI_MAX);
			error = FUNC1(sc, MPS_MSI_MAX);
		}
	}
	if ((error != 0) || (msgs == 0)) {
		/*
		 * If neither MSI or MSI-X are avaiable, assume legacy INTx.
		 * This also implies that there will be only 1 queue.
		 */
		FUNC3(sc, MPS_INIT, "Falling back to legacy INTx\n");
		sc->mps_flags |= MPS_FLAGS_INTX;
		msgs = 1;
	} else
		sc->mps_flags |= MPS_FLAGS_MSI;

	sc->msi_msgs = msgs;
	FUNC3(sc, MPS_INIT, "Allocated %d interrupts\n", msgs);

	return (error);
}