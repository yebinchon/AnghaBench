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
struct fxp_softc {int /*<<< orphan*/  mcs_map; int /*<<< orphan*/  mcs_tag; int /*<<< orphan*/  mcs_addr; int /*<<< orphan*/  dev; struct fxp_cb_mcs* mcsp; } ;
struct fxp_cb_mcs {int link_addr; scalar_t__ cb_status; int /*<<< orphan*/  cb_command; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fxp_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FXP_CB_COMMAND_EL ; 
 int FXP_CB_COMMAND_MCAS ; 
 int /*<<< orphan*/  FXP_CSR_SCB_GENERAL ; 
 int /*<<< orphan*/  FXP_CSR_SCB_RUSCUS ; 
 int /*<<< orphan*/  FUNC3 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FXP_SCB_COMMAND_CU_START ; 
 int FXP_SCB_CUS_IDLE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct fxp_softc*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11(struct fxp_softc *sc)
{
	struct fxp_cb_mcs *mcsp;
	int count;

	FUNC3(sc, MA_OWNED);

	mcsp = sc->mcsp;
	mcsp->cb_status = 0;
	mcsp->cb_command = FUNC10(FXP_CB_COMMAND_MCAS | FXP_CB_COMMAND_EL);
	mcsp->link_addr = 0xffffffff;
	FUNC7(sc);

	/*
	 * Wait until command unit is idle. This should never be the
	 * case when nothing is queued, but make sure anyway.
	 */
	count = 100;
	while ((FUNC0(sc, FXP_CSR_SCB_RUSCUS) >> 6) !=
	    FXP_SCB_CUS_IDLE && --count)
		FUNC2(10);
	if (count == 0) {
		FUNC5(sc->dev, "command queue timeout\n");
		return;
	}

	/*
	 * Start the multicast setup command.
	 */
	FUNC9(sc);
	FUNC4(sc->mcs_tag, sc->mcs_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	FUNC1(sc, FXP_CSR_SCB_GENERAL, sc->mcs_addr);
	FUNC8(sc, FXP_SCB_COMMAND_CU_START);
	/* ...and wait for it to complete. */
	FUNC6(sc, &mcsp->cb_status, sc->mcs_tag, sc->mcs_map);
}