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
typedef  int /*<<< orphan*/  u32 ;
struct ifnet {int dummy; } ;
struct bce_softc {int bce_flags; int bce_phy_flags; int /*<<< orphan*/  bce_miibus; int /*<<< orphan*/  bce_ifmedia; int /*<<< orphan*/  bce_pulse_callout; struct ifnet* bce_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCE_DRV_MSG_CODE_UNLOAD ; 
 int /*<<< orphan*/  BCE_DRV_MSG_CODE_UNLOAD_LNK_DN ; 
 int /*<<< orphan*/  FUNC0 (struct bce_softc*) ; 
 int BCE_NO_WOL_FLAG ; 
 int BCE_PHY_REMOTE_CAP_FLAG ; 
 int /*<<< orphan*/  FUNC1 (struct bce_softc*) ; 
 int BCE_VERBOSE_RESET ; 
 int BCE_VERBOSE_UNLOAD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bce_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bce_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct bce_softc *sc = FUNC10(dev);
	struct ifnet *ifp;
	u32 msg;

	FUNC2(BCE_VERBOSE_UNLOAD | BCE_VERBOSE_RESET);

	ifp = sc->bce_ifp;

	/* Stop and reset the controller. */
	FUNC0(sc);

	/* Stop the pulse so the bootcode can go to driver absent state. */
	FUNC8(&sc->bce_pulse_callout);

	FUNC6(sc);
	if (sc->bce_flags & BCE_NO_WOL_FLAG)
		msg = BCE_DRV_MSG_CODE_UNLOAD_LNK_DN;
	else
		msg = BCE_DRV_MSG_CODE_UNLOAD;
	FUNC5(sc, msg);

	FUNC1(sc);

	FUNC11(ifp);

	/* If we have a child device on the MII bus remove it too. */
	if ((sc->bce_phy_flags & BCE_PHY_REMOTE_CAP_FLAG) != 0)
		FUNC12(&sc->bce_ifmedia);
	else {
		FUNC7(dev);
		FUNC9(dev, sc->bce_miibus);
	}

	/* Release all remaining resources. */
	FUNC4(sc);

	FUNC3(BCE_VERBOSE_UNLOAD | BCE_VERBOSE_RESET);

	return(0);
}