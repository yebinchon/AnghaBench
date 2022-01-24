#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mfi_softc {int adpreset; int hw_crit_error; int issuepend_done; int /*<<< orphan*/  mfi_dev; int /*<<< orphan*/  last_seq_num; TYPE_1__* mfi_map_sync_cm; TYPE_1__* mfi_aen_cm; int /*<<< orphan*/  (* mfi_enable_intr ) (struct mfi_softc*) ;scalar_t__ last_reply_idx; scalar_t__ mfi_max_fw_cmds; int /*<<< orphan*/  (* mfi_disable_intr ) (struct mfi_softc*) ;int /*<<< orphan*/  (* mfi_adp_reset ) (struct mfi_softc*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  cm_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mfi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MFI_RFPI ; 
 int /*<<< orphan*/  MFI_RPI ; 
 int /*<<< orphan*/  MFI_RSR ; 
 int /*<<< orphan*/  FUNC2 (struct mfi_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  M_MFIBUF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mfi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct mfi_softc*) ; 
 scalar_t__ FUNC12 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct mfi_softc*) ; 

__attribute__((used)) static void
FUNC17(void *arg)
{
	struct mfi_softc *sc= (struct mfi_softc *)arg;
	int error, status;

	if (sc->adpreset == 1) {
		FUNC3(sc->mfi_dev, "First stage of FW reset "
		     "initiated...\n");

		sc->mfi_adp_reset(sc);
		sc->mfi_enable_intr(sc);

		FUNC3(sc->mfi_dev, "First stage of reset complete, "
		    "second stage initiated...\n");

		sc->adpreset = 2;

		/* waiting for about 20 second before start the second init */
		for (int wait = 0; wait < 20000; wait++)
			FUNC0(1000);
		FUNC3(sc->mfi_dev, "Second stage of FW reset "
		     "initiated...\n");
		while ((status = FUNC1(sc, MFI_RSR)) & 0x04);

		sc->mfi_disable_intr(sc);

		/* We expect the FW state to be READY */
		if (FUNC12(sc)) {
			FUNC3(sc->mfi_dev, "controller is not in "
			    "ready state\n");
			FUNC7(sc);
			sc->hw_crit_error = 1;
			return;
		}
		if ((error = FUNC10(sc)) != 0) {
			FUNC3(sc->mfi_dev, "Failed to initialise MFI "
			    "queue\n");
			FUNC7(sc);
			sc->hw_crit_error = 1;
			return;
		}

		/* Init last reply index and max */
		FUNC2(sc, MFI_RFPI, sc->mfi_max_fw_cmds - 1);
		FUNC2(sc, MFI_RPI, sc->last_reply_idx);

		sc->mfi_enable_intr(sc);
		sc->adpreset = 0;
		if (sc->mfi_aen_cm != NULL) {
			FUNC4(sc->mfi_aen_cm->cm_data, M_MFIBUF);
			FUNC9(sc->mfi_aen_cm);
			FUNC8(sc->mfi_aen_cm);
			sc->mfi_aen_cm = NULL;
		}

		if (sc->mfi_map_sync_cm != NULL) {
			FUNC9(sc->mfi_map_sync_cm);
			FUNC8(sc->mfi_map_sync_cm);
			sc->mfi_map_sync_cm = NULL;
		}
		FUNC6(sc);

		/*
		 * Issue pending command can result in adapter being marked
		 * dead because of too many re-tries. Check for that
		 * condition before clearing the reset condition on the FW
		 */
		if (!sc->hw_crit_error) {
			/*
			 * Initiate AEN (Asynchronous Event Notification) &
			 * Sync Map
			 */
			FUNC5(sc, sc->last_seq_num);
			FUNC11(sc);

			sc->issuepend_done = 1;
			FUNC3(sc->mfi_dev, "second stage of reset "
			    "complete, FW is ready now.\n");
		} else {
			FUNC3(sc->mfi_dev, "second stage of reset "
			     "never completed, hba was marked offline.\n");
		}
	} else {
		FUNC3(sc->mfi_dev, "mfi_process_fw_state_chg_isr "
		    "called with unhandled value:%d\n", sc->adpreset);
	}
}