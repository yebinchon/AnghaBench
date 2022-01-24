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
struct ifnet {int /*<<< orphan*/  if_flags; struct bridge_softc* if_softc; } ;
struct bridge_softc {int /*<<< orphan*/  sc_stp; int /*<<< orphan*/  sc_brcallout; int /*<<< orphan*/  sc_spanlist; int /*<<< orphan*/  sc_iflist; } ;
struct bridge_iflist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct bridge_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bridge_softc*) ; 
 int /*<<< orphan*/  IFF_UP ; 
 struct bridge_iflist* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bridge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC7 (struct bridge_softc*,struct bridge_iflist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bridge_softc*,struct bridge_iflist*) ; 
 int /*<<< orphan*/  FUNC9 (struct bridge_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC14 (struct bridge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*) ; 
 int /*<<< orphan*/  sc_list ; 

__attribute__((used)) static void
FUNC16(struct ifnet *ifp)
{
	struct bridge_softc *sc = ifp->if_softc;
	struct bridge_iflist *bif;

	FUNC2(sc);

	FUNC10(ifp, 1);
	ifp->if_flags &= ~IFF_UP;

	while ((bif = FUNC5(&sc->sc_iflist)) != NULL)
		FUNC7(sc, bif, 0);

	while ((bif = FUNC5(&sc->sc_spanlist)) != NULL) {
		FUNC8(sc, bif);
	}

	/* Tear down the routing table. */
	FUNC9(sc);

	FUNC4(sc);

	FUNC12(&sc->sc_brcallout);

	FUNC0();
	FUNC6(sc, sc_list);
	FUNC1();

	FUNC11(&sc->sc_stp);
	FUNC13(ifp);
	FUNC15(ifp);

	FUNC3(sc);
	FUNC14(sc, M_DEVBUF);
}