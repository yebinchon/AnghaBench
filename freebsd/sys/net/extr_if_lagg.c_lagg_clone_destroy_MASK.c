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
struct lagg_softc {int sc_destroying; int /*<<< orphan*/  sc_media; int /*<<< orphan*/  sc_ports; int /*<<< orphan*/  vlan_detach; int /*<<< orphan*/  vlan_attach; } ;
struct lagg_port {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_flags; scalar_t__ if_softc; } ;

/* Variables and functions */
 struct lagg_port* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct lagg_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct lagg_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct lagg_softc*) ; 
 int /*<<< orphan*/  M_LAGG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct lagg_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_lagg_list ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct lagg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct lagg_port*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct lagg_softc*) ; 
 int /*<<< orphan*/  lagg_softc ; 
 int /*<<< orphan*/  FUNC14 (struct lagg_softc*) ; 
 int /*<<< orphan*/  sc_entries ; 
 int /*<<< orphan*/  vlan_config ; 
 int /*<<< orphan*/  vlan_unconfig ; 

__attribute__((used)) static void
FUNC15(struct ifnet *ifp)
{
	struct lagg_softc *sc = (struct lagg_softc *)ifp->if_softc;
	struct lagg_port *lp;

	FUNC5(sc);
	sc->sc_destroying = 1;
	FUNC14(sc);
	ifp->if_flags &= ~IFF_UP;

	FUNC1(vlan_config, sc->vlan_attach);
	FUNC1(vlan_unconfig, sc->vlan_detach);

	/* Shutdown and remove lagg ports */
	while ((lp = FUNC0(&sc->sc_ports)) != NULL)
		FUNC12(lp, 1);

	/* Unhook the aggregation protocol */
	FUNC13(sc);
	FUNC6(sc);

	FUNC11(&sc->sc_media);
	FUNC8(ifp);
	FUNC10(ifp);

	FUNC2();
	FUNC7(&V_lagg_list, sc, lagg_softc, sc_entries);
	FUNC3();

	FUNC4(sc);
	FUNC9(sc, M_LAGG);
}