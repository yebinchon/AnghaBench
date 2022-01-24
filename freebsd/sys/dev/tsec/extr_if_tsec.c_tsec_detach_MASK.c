#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tsec_softc {TYPE_1__* tsec_ifp; int /*<<< orphan*/  dev; scalar_t__ sc_rres; } ;
struct TYPE_4__ {int if_capenable; } ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct tsec_softc *sc)
{

	if (sc->tsec_ifp != NULL) {
#ifdef DEVICE_POLLING
		if (sc->tsec_ifp->if_capenable & IFCAP_POLLING)
			ether_poll_deregister(sc->tsec_ifp);
#endif

		/* Stop TSEC controller and free TX queue */
		if (sc->sc_rres)
			FUNC4(sc->dev);

		/* Detach network interface */
		FUNC0(sc->tsec_ifp);
		FUNC2(sc->tsec_ifp);
		sc->tsec_ifp = NULL;
	}

	/* Free DMA resources */
	FUNC3(sc);

	return (0);
}