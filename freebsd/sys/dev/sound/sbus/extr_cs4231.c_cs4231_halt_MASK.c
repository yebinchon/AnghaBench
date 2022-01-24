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
typedef  int u_int8_t ;
struct cs4231_softc {int sc_flags; int /*<<< orphan*/  sc_dev; } ;
struct cs4231_channel {scalar_t__ locked; scalar_t__ dir; struct cs4231_softc* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  APC_CSR ; 
 int APC_CSR_CAPTURE_PAUSE ; 
 int APC_CSR_EI ; 
 int APC_CSR_EIE ; 
 int APC_CSR_GIE ; 
 int APC_CSR_PDMA_GO ; 
 int APC_CSR_PIE ; 
 int APC_CSR_PMIE ; 
 int FUNC0 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 int CAPTURE_ENABLE ; 
 int CAPTURE_OVERRUN ; 
 int /*<<< orphan*/  FUNC2 (struct cs4231_softc*) ; 
 int CS4231_SBUS ; 
 int /*<<< orphan*/  FUNC3 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  CS_INTERFACE_CONFIG ; 
 int /*<<< orphan*/  CS_TEST_AND_INIT ; 
 int CS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int EBDCSR_DMAEN ; 
 int FUNC5 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EBDMA_DCSR ; 
 int FUNC7 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ PCMDIR_PLAY ; 
 int PLAYBACK_ENABLE ; 
 int PLAYBACK_UNDERRUN ; 
 int FUNC9 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC12(struct cs4231_channel *ch)
{
	struct cs4231_softc *sc;
	u_int8_t status;
	int i;

	sc = ch->parent;
	FUNC2(sc);
	if (ch->locked == 0) {
		FUNC3(sc);
		return;
	}

	if (ch->dir == PCMDIR_PLAY ) {
		if ((sc->sc_flags & CS4231_SBUS) != 0) {
			/* XXX Kills some capture bits */
			FUNC1(sc, APC_CSR, FUNC0(sc, APC_CSR) &
			    ~(APC_CSR_EI | APC_CSR_GIE | APC_CSR_PIE |
			    APC_CSR_EIE | APC_CSR_PDMA_GO | APC_CSR_PMIE));
		} else {
			FUNC8(sc, EBDMA_DCSR,
			    FUNC7(sc, EBDMA_DCSR) & ~EBDCSR_DMAEN);
		}
		/* Waiting for playback FIFO to empty */
		status = FUNC9(sc, CS_TEST_AND_INIT);
		for (i = CS_TIMEOUT;
		    i && (status & PLAYBACK_UNDERRUN) == 0; i--) {
			FUNC4(5);
			status = FUNC9(sc, CS_TEST_AND_INIT);
		}
		if (i == 0)
			FUNC11(sc->sc_dev, "timeout waiting for "
			    "playback FIFO drain\n");
		FUNC10(sc, CS_INTERFACE_CONFIG,
		    FUNC9(sc, CS_INTERFACE_CONFIG) & (~PLAYBACK_ENABLE));
	} else {
		if ((sc->sc_flags & CS4231_SBUS) != 0) {
			/* XXX Kills some playback bits */
			FUNC1(sc, APC_CSR, APC_CSR_CAPTURE_PAUSE);
		} else {
			FUNC6(sc, EBDMA_DCSR,
			    FUNC5(sc, EBDMA_DCSR) & ~EBDCSR_DMAEN);
		}
		/* Waiting for capture FIFO to empty */
		status = FUNC9(sc, CS_TEST_AND_INIT);
		for (i = CS_TIMEOUT;
		    i && (status & CAPTURE_OVERRUN) == 0; i--) {
			FUNC4(5);
			status = FUNC9(sc, CS_TEST_AND_INIT);
		}
		if (i == 0)
			FUNC11(sc->sc_dev, "timeout waiting for "
			    "capture FIFO drain\n");
		FUNC10(sc, CS_INTERFACE_CONFIG,
		    FUNC9(sc, CS_INTERFACE_CONFIG) & (~CAPTURE_ENABLE));
	}
	ch->locked = 0;
	FUNC3(sc);
}