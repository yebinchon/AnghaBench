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
typedef  int uint8_t ;
struct uss820dci_softc {scalar_t__ sc_xfer_complete; int /*<<< orphan*/  sc_bus; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int FILTER_SCHEDULE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int USS820_DCI_THREAD_IRQ ; 
 int FUNC2 (struct uss820dci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USS820_SSR ; 
 int /*<<< orphan*/  FUNC3 (struct uss820dci_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct uss820dci_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC5(void *arg)
{
	struct uss820dci_softc *sc = arg;
	int retval = FILTER_HANDLED;
	uint8_t ssr;

	FUNC0(&sc->sc_bus);

	ssr = FUNC2(sc, USS820_SSR);
	FUNC4(sc, USS820_SSR, USS820_DCI_THREAD_IRQ, 0);

	if (ssr & USS820_DCI_THREAD_IRQ)
		retval = FILTER_SCHEDULE_THREAD;

	/* poll FIFOs, if any */
	FUNC3(sc);

	if (sc->sc_xfer_complete != 0)
		retval = FILTER_SCHEDULE_THREAD;

	FUNC1(&sc->sc_bus);

	return (retval);
}