#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * imo_multicast_ifp; int /*<<< orphan*/  imo_head; } ;
struct pfsync_softc {struct ifnet* sc_sync_if; TYPE_1__ sc_imo; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pfsync_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct pfsync_softc*) ; 
 struct pfsync_softc* V_pfsyncif ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct ifnet *ifp)
{
	struct pfsync_softc *sc = V_pfsyncif;

	if (sc == NULL)
		return;

	FUNC0(sc);

	if (sc->sc_sync_if == ifp) {
		/* We don't need mutlicast cleanup here, because the interface
		 * is going away. We do need to ensure we don't try to do
		 * cleanup later.
		 */
		FUNC2(&sc->sc_imo.imo_head);
		sc->sc_imo.imo_multicast_ifp = NULL;
		sc->sc_sync_if = NULL;
	}

	FUNC1(sc);
}