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
struct vtnet_softc {int /*<<< orphan*/ * vtnet_ctrl_vq; struct ifnet* vtnet_ifp; int /*<<< orphan*/  vtnet_media; int /*<<< orphan*/ * vtnet_vlan_detach; int /*<<< orphan*/ * vtnet_vlan_attach; int /*<<< orphan*/  vtnet_tick_ch; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct vtnet_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  vlan_config ; 
 int /*<<< orphan*/  vlan_unconfig ; 
 int /*<<< orphan*/  FUNC11 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct vtnet_softc*) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct vtnet_softc *sc;
	struct ifnet *ifp;

	sc = FUNC5(dev);
	ifp = sc->vtnet_ifp;

	if (FUNC6(dev)) {
		FUNC1(sc);
		FUNC16(sc);
		FUNC3(sc);

		FUNC4(&sc->vtnet_tick_ch);
		FUNC11(sc);

		FUNC7(ifp);
	}

#ifdef DEV_NETMAP
	netmap_detach(ifp);
#endif /* DEV_NETMAP */

	FUNC15(sc);

	if (sc->vtnet_vlan_attach != NULL) {
		FUNC0(vlan_config, sc->vtnet_vlan_attach);
		sc->vtnet_vlan_attach = NULL;
	}
	if (sc->vtnet_vlan_detach != NULL) {
		FUNC0(vlan_unconfig, sc->vtnet_vlan_detach);
		sc->vtnet_vlan_detach = NULL;
	}

	FUNC9(&sc->vtnet_media);

	if (ifp != NULL) {
		FUNC8(ifp);
		sc->vtnet_ifp = NULL;
	}

	FUNC14(sc);
	FUNC13(sc);

	if (sc->vtnet_ctrl_vq != NULL)
		FUNC12(sc);

	FUNC2(sc);

	return (0);
}