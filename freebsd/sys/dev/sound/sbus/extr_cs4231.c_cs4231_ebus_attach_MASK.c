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
struct cs4231_softc {int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_nires; int /*<<< orphan*/  sc_nmres; int /*<<< orphan*/  sc_burst; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CS4231_EBUS ; 
 int /*<<< orphan*/  CS4231_RES_IRQ_MAX ; 
 int /*<<< orphan*/  CS4231_RES_MEM_MAX ; 
 int /*<<< orphan*/  EBDCSR_BURST_1 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int FUNC0 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct cs4231_softc* FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct cs4231_softc *sc;

	sc = FUNC2(sizeof(struct cs4231_softc), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (sc == NULL) {
		FUNC1(dev, "cannot allocate softc\n");
		return (ENOMEM);
	}
	sc->sc_dev = dev;
	sc->sc_burst = EBDCSR_BURST_1;
	sc->sc_nmres = CS4231_RES_MEM_MAX;
	sc->sc_nires = CS4231_RES_IRQ_MAX;
	sc->sc_flags = CS4231_EBUS;
	return FUNC0(sc);
}