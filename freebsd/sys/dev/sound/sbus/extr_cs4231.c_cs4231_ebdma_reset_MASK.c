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
struct cs4231_softc {int sc_burst; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int CS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBDCSR_DRAIN ; 
 int EBDCSR_INTEN ; 
 int EBDCSR_NEXTEN ; 
 int EBDCSR_RESET ; 
 int FUNC1 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EBDMA_DCSR ; 
 int FUNC3 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(struct cs4231_softc *sc)
{
	int i;

	/* playback */
	FUNC4(sc, EBDMA_DCSR,
	    FUNC3(sc, EBDMA_DCSR) & ~(EBDCSR_INTEN | EBDCSR_NEXTEN));
	FUNC4(sc, EBDMA_DCSR, EBDCSR_RESET);
	for (i = CS_TIMEOUT;
	    i && FUNC3(sc, EBDMA_DCSR) & EBDCSR_DRAIN; i--)
		FUNC0(1);
	if (i == 0)
		FUNC5(sc->sc_dev,
		    "timeout waiting for playback DMA reset\n");
	FUNC4(sc, EBDMA_DCSR, sc->sc_burst);
	/* capture */
	FUNC2(sc, EBDMA_DCSR,
	    FUNC1(sc, EBDMA_DCSR) & ~(EBDCSR_INTEN | EBDCSR_NEXTEN));
	FUNC2(sc, EBDMA_DCSR, EBDCSR_RESET);
	for (i = CS_TIMEOUT;
	    i && FUNC1(sc, EBDMA_DCSR) & EBDCSR_DRAIN; i--)
		FUNC0(1);
	if (i == 0)
		FUNC5(sc->sc_dev,
		    "timeout waiting for capture DMA reset\n");
	FUNC2(sc, EBDMA_DCSR, sc->sc_burst);
}