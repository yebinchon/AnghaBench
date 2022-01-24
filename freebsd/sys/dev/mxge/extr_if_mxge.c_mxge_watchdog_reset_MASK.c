#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct pci_devinfo {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  mtx; } ;
struct mxge_slice_state {TYPE_1__ tx; } ;
struct TYPE_12__ {int num_slices; int dying; int /*<<< orphan*/  co_hdl; int /*<<< orphan*/  dev; int /*<<< orphan*/  watchdog_resets; struct mxge_slice_state* ss; TYPE_9__* ifp; scalar_t__ link_state; } ;
typedef  TYPE_2__ mxge_softc_t ;
struct TYPE_13__ {int if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int PCIM_CMD_BUSMASTEREN ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct pci_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct mxge_slice_state*) ; 
 int /*<<< orphan*/  mxge_tick ; 
 int /*<<< orphan*/  mxge_ticks ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct pci_devinfo*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC15(mxge_softc_t *sc)
{
	struct pci_devinfo *dinfo;
	struct mxge_slice_state *ss;
	int err, running, s, num_tx_slices = 1;
	uint32_t reboot;
	uint16_t cmd;

	err = ENXIO;

	FUNC3(sc->dev, "Watchdog reset!\n");

	/*
	 * check to see if the NIC rebooted.  If it did, then all of
	 * PCI config space has been reset, and things like the
	 * busmaster bit will be zero.  If this is the case, then we
	 * must restore PCI config space before the NIC can be used
	 * again
	 */
	cmd = FUNC14(sc->dev, PCIR_COMMAND, 2);
	if (cmd == 0xffff) {
		/*
		 * maybe the watchdog caught the NIC rebooting; wait
		 * up to 100ms for it to finish.  If it does not come
		 * back, then give up
		 */
		FUNC0(1000*100);
		cmd = FUNC14(sc->dev, PCIR_COMMAND, 2);
		if (cmd == 0xffff) {
			FUNC3(sc->dev, "NIC disappeared!\n");
		}
	}
	if ((cmd & PCIM_CMD_BUSMASTEREN) == 0) {
		/* print the reboot status */
		reboot = FUNC10(sc);
		FUNC3(sc->dev, "NIC rebooted, status = 0x%x\n",
			      reboot);
		running = sc->ifp->if_drv_flags & IFF_DRV_RUNNING;
		if (running) {

			/*
			 * quiesce NIC so that TX routines will not try to
			 * xmit after restoration of BAR
			 */

			/* Mark the link as down */
			if (sc->link_state) {
				sc->link_state = 0;
				FUNC4(sc->ifp,
						     LINK_STATE_DOWN);
			}
#ifdef IFNET_BUF_RING
			num_tx_slices = sc->num_slices;
#endif
			/* grab all TX locks to ensure no tx  */
			for (s = 0; s < num_tx_slices; s++) {
				ss = &sc->ss[s];
				FUNC5(&ss->tx.mtx);
			}
			FUNC7(sc, 1);
		}
		/* restore PCI configuration space */
		dinfo = FUNC2(sc->dev);
		FUNC13(sc->dev, dinfo);

		/* and redo any changes we made to our config space */
		FUNC11(sc);

		/* reload f/w */
		err = FUNC8(sc, 0);
		if (err) {
			FUNC3(sc->dev,
				      "Unable to re-load f/w\n");
		}
		if (running) {
			if (!err)
				err = FUNC9(sc);
			/* release all TX locks */
			for (s = 0; s < num_tx_slices; s++) {
				ss = &sc->ss[s];
#ifdef IFNET_BUF_RING
				mxge_start_locked(ss);
#endif
				FUNC6(&ss->tx.mtx);
			}
		}
		sc->watchdog_resets++;
	} else {
		FUNC3(sc->dev,
			      "NIC did not reboot, not resetting\n");
		err = 0;
	}
	if (err) {
		FUNC3(sc->dev, "watchdog reset failed\n");
	} else {
		if (sc->dying == 2)
			sc->dying = 0;
		FUNC1(&sc->co_hdl, mxge_ticks, mxge_tick, sc);
	}
}