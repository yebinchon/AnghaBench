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
struct cs4231_channel {scalar_t__ locked; } ;
struct cs4231_softc {int sc_flags; struct cs4231_channel sc_pch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CS4231_EBUS ; 
 int /*<<< orphan*/  FUNC0 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs4231_softc*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC2 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct cs4231_softc*) ; 
 struct cs4231_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct cs4231_softc *sc;
	struct cs4231_channel *pch, *rch;
	int error;

	sc = FUNC4(dev);
	FUNC0(sc);
	pch = &sc->sc_pch;
	rch = &sc->sc_pch;
	if (pch->locked || rch->locked) {
		FUNC1(sc);
		return (EBUSY);
	}
	/*
	 * Since EBDMA requires valid DMA buffer to drain its FIFO, we need
	 * real DMA buffer for draining.
	 */
	if ((sc->sc_flags & CS4231_EBUS) != 0)
		FUNC2(sc);
	FUNC1(sc);
	error = FUNC5(dev);
	if (error)
		return (error);
	FUNC3(sc);
	return (0);
}