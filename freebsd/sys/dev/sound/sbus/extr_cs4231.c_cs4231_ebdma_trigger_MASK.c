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
typedef  int u_int32_t ;
struct cs4231_softc {int sc_burst; int /*<<< orphan*/  sc_dev; } ;
struct cs4231_channel {int locked; scalar_t__ dir; int togo; int nextaddr; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int CAPTURE_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  CS_INTERFACE_CONFIG ; 
 int /*<<< orphan*/  CS_TEST_AND_INIT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EBDCSR_A_LOADED ; 
 int EBDCSR_BURST_1 ; 
 int EBDCSR_BURST_16 ; 
 int EBDCSR_BURST_4 ; 
 int EBDCSR_BURST_8 ; 
 int EBDCSR_CNTEN ; 
 int EBDCSR_DMAEN ; 
 int EBDCSR_INTEN ; 
 int EBDCSR_NEXTEN ; 
 int EBDCSR_RESET ; 
 int EBDCSR_WRITE ; 
 int FUNC3 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EBDMA_DADDR ; 
 int /*<<< orphan*/  EBDMA_DCNT ; 
 int /*<<< orphan*/  EBDMA_DCSR ; 
 int FUNC5 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ PCMDIR_PLAY ; 
 int PLAYBACK_ENABLE ; 
 int FUNC7 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct cs4231_softc *sc, struct cs4231_channel *ch)
{
	u_int32_t csr, togo;
	u_int32_t nextaddr;

	FUNC0(sc);
	if (ch->locked) {
		FUNC9(sc->sc_dev, "%s channel already triggered\n",
		    ch->dir == PCMDIR_PLAY ? "playback" : "capture");
		FUNC1(sc);
		return;
	}

	nextaddr = FUNC10(ch->buffer);
	togo = FUNC11(ch->buffer) / 2;
	if (togo % 64 == 0)
		sc->sc_burst = EBDCSR_BURST_16;
	else if (togo % 32 == 0)
		sc->sc_burst = EBDCSR_BURST_8;
	else if (togo % 16 == 0)
		sc->sc_burst = EBDCSR_BURST_4;
	else 
		sc->sc_burst = EBDCSR_BURST_1;
	ch->togo = togo;
	FUNC2(("TRG: DNAR = 0x%x, togo = 0x%x\n", nextaddr, togo));
	if (ch->dir == PCMDIR_PLAY) {
		FUNC7(sc, CS_TEST_AND_INIT); /* clear pending error */
		csr = FUNC5(sc, EBDMA_DCSR);

		if (csr & EBDCSR_DMAEN) {
			FUNC6(sc, EBDMA_DCNT, togo);
			FUNC6(sc, EBDMA_DADDR, nextaddr);
		} else {
			FUNC6(sc, EBDMA_DCSR, EBDCSR_RESET);
			FUNC6(sc, EBDMA_DCSR, sc->sc_burst);
			FUNC6(sc, EBDMA_DCNT, togo);
			FUNC6(sc, EBDMA_DADDR, nextaddr);

			FUNC6(sc, EBDMA_DCSR, sc->sc_burst |
			    EBDCSR_DMAEN | EBDCSR_INTEN | EBDCSR_CNTEN |
			    EBDCSR_NEXTEN);
			FUNC8(sc, CS_INTERFACE_CONFIG,
			    FUNC7(sc, CS_INTERFACE_CONFIG) |
			    PLAYBACK_ENABLE);
		}
		/* load next address */
		if (FUNC5(sc, EBDMA_DCSR) & EBDCSR_A_LOADED) {
			nextaddr += togo;
			FUNC6(sc, EBDMA_DCNT, togo);
			FUNC6(sc, EBDMA_DADDR, nextaddr);
		}
	} else {
		FUNC7(sc, CS_TEST_AND_INIT); /* clear pending error */
		csr = FUNC3(sc, EBDMA_DCSR);

		if (csr & EBDCSR_DMAEN) {
			FUNC4(sc, EBDMA_DCNT, togo);
			FUNC4(sc, EBDMA_DADDR, nextaddr);
		} else {
			FUNC4(sc, EBDMA_DCSR, EBDCSR_RESET);
			FUNC4(sc, EBDMA_DCSR, sc->sc_burst);
			FUNC4(sc, EBDMA_DCNT, togo);
			FUNC4(sc, EBDMA_DADDR, nextaddr);

			FUNC4(sc, EBDMA_DCSR, sc->sc_burst |
			    EBDCSR_WRITE | EBDCSR_DMAEN | EBDCSR_INTEN |
			    EBDCSR_CNTEN | EBDCSR_NEXTEN);
			FUNC8(sc, CS_INTERFACE_CONFIG,
			    FUNC7(sc, CS_INTERFACE_CONFIG) |
			    CAPTURE_ENABLE);
		}
		/* load next address */
		if (FUNC3(sc, EBDMA_DCSR) & EBDCSR_A_LOADED) {
			nextaddr += togo;
			FUNC4(sc, EBDMA_DCNT, togo);
			FUNC4(sc, EBDMA_DADDR, nextaddr);
		}
	}
	ch->nextaddr = nextaddr;
	ch->locked = 1;
	FUNC1(sc);
}