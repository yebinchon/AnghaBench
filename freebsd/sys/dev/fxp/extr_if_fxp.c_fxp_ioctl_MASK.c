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
typedef  int u_long ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct fxp_softc {int if_flags; int flags; int /*<<< orphan*/  revision; int /*<<< orphan*/  sc_media; int /*<<< orphan*/ * miibus; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSUM_TSO ; 
 int /*<<< orphan*/  FXP_CSR_SCB_INTRCNTL ; 
 int /*<<< orphan*/  FXP_CSUM_FEATURES ; 
 int FXP_FLAG_82559_RXCSUM ; 
 int FXP_FLAG_LONG_PKT_EN ; 
 int FXP_FLAG_SAVE_BAD ; 
 int /*<<< orphan*/  FUNC1 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FXP_REV_82557 ; 
 int /*<<< orphan*/  FXP_SCB_INTR_DISABLE ; 
 int /*<<< orphan*/  FUNC2 (struct fxp_softc*) ; 
 int IFCAP_POLLING ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_VLAN_MTU ; 
 int IFCAP_WOL_MAGIC ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_LINK0 ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 133 
#define  SIOCDELMULTI 132 
#define  SIOCGIFMEDIA 131 
#define  SIOCSIFCAP 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 struct mii_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fxp_softc*,int) ; 
 int /*<<< orphan*/  fxp_poll ; 
 int /*<<< orphan*/  FUNC8 (struct fxp_softc*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 struct fxp_softc* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct ifreq*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC20(if_t ifp, u_long command, caddr_t data)
{
	struct fxp_softc *sc = FUNC13(ifp);
	struct ifreq *ifr = (struct ifreq *)data;
	struct mii_data *mii;
	int flag, mask, error = 0, reinit;

	switch (command) {
	case SIOCSIFFLAGS:
		FUNC1(sc);
		/*
		 * If interface is marked up and not running, then start it.
		 * If it is marked down and running, stop it.
		 * XXX If it's up then re-initialize it. This is so flags
		 * such as IFF_PROMISC are handled.
		 */
		if (FUNC12(ifp) & IFF_UP) {
			if (((FUNC11(ifp) & IFF_DRV_RUNNING) != 0) &&
			    ((FUNC12(ifp) ^ sc->if_flags) &
			    (IFF_PROMISC | IFF_ALLMULTI | IFF_LINK0)) != 0) {
				FUNC15(ifp, 0, IFF_DRV_RUNNING);
				FUNC7(sc, 0);
			} else if ((FUNC11(ifp) & IFF_DRV_RUNNING) == 0)
				FUNC7(sc, 1);
		} else {
			if ((FUNC11(ifp) & IFF_DRV_RUNNING) != 0)
				FUNC8(sc);
		}
		sc->if_flags = FUNC12(ifp);
		FUNC2(sc);
		break;

	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC1(sc);
		if ((FUNC11(ifp) & IFF_DRV_RUNNING) != 0) {
			FUNC15(ifp, 0, IFF_DRV_RUNNING);
			FUNC7(sc, 0);
		}
		FUNC2(sc);
		break;

	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		if (sc->miibus != NULL) {
			mii = FUNC3(sc->miibus);
                        error = FUNC19(ifp, ifr,
                            &mii->mii_media, command);
		} else {
                        error = FUNC19(ifp, ifr, &sc->sc_media, command);
		}
		break;

	case SIOCSIFCAP:
		reinit = 0;
		mask = FUNC10(ifp) ^ ifr->ifr_reqcap;
#ifdef DEVICE_POLLING
		if (mask & IFCAP_POLLING) {
			if (ifr->ifr_reqcap & IFCAP_POLLING) {
				error = ether_poll_register(fxp_poll, ifp);
				if (error)
					return(error);
				FXP_LOCK(sc);
				CSR_WRITE_1(sc, FXP_CSR_SCB_INTRCNTL,
				    FXP_SCB_INTR_DISABLE);
				if_setcapenablebit(ifp, IFCAP_POLLING, 0);
				FXP_UNLOCK(sc);
			} else {
				error = ether_poll_deregister(ifp);
				/* Enable interrupts in any case */
				FXP_LOCK(sc);
				CSR_WRITE_1(sc, FXP_CSR_SCB_INTRCNTL, 0);
				if_setcapenablebit(ifp, 0, IFCAP_POLLING);
				FXP_UNLOCK(sc);
			}
		}
#endif
		FUNC1(sc);
		if ((mask & IFCAP_TXCSUM) != 0 &&
		    (FUNC9(ifp) & IFCAP_TXCSUM) != 0) {
			FUNC17(ifp, IFCAP_TXCSUM);
			if ((FUNC10(ifp) & IFCAP_TXCSUM) != 0)
				FUNC16(ifp, FXP_CSUM_FEATURES, 0);
			else
				FUNC16(ifp, 0, FXP_CSUM_FEATURES);
		}
		if ((mask & IFCAP_RXCSUM) != 0 &&
		    (FUNC9(ifp) & IFCAP_RXCSUM) != 0) {
			FUNC17(ifp, IFCAP_RXCSUM);
			if ((sc->flags & FXP_FLAG_82559_RXCSUM) != 0)
				reinit++;
		}
		if ((mask & IFCAP_TSO4) != 0 &&
		    (FUNC9(ifp) & IFCAP_TSO4) != 0) {
			FUNC17(ifp, IFCAP_TSO4);
			if ((FUNC10(ifp) & IFCAP_TSO4) != 0)
				FUNC16(ifp, CSUM_TSO, 0);
			else
				FUNC16(ifp, 0, CSUM_TSO);
		}
		if ((mask & IFCAP_WOL_MAGIC) != 0 &&
		    (FUNC9(ifp) & IFCAP_WOL_MAGIC) != 0)
			FUNC17(ifp, IFCAP_WOL_MAGIC);
		if ((mask & IFCAP_VLAN_MTU) != 0 &&
		    (FUNC9(ifp) & IFCAP_VLAN_MTU) != 0) {
			FUNC17(ifp, IFCAP_VLAN_MTU);
			if (sc->revision != FXP_REV_82557)
				flag = FXP_FLAG_LONG_PKT_EN;
			else /* a hack to get long frames on the old chip */
				flag = FXP_FLAG_SAVE_BAD;
			sc->flags ^= flag;
			if (FUNC12(ifp) & IFF_UP)
				reinit++;
		}
		if ((mask & IFCAP_VLAN_HWCSUM) != 0 &&
		    (FUNC9(ifp) & IFCAP_VLAN_HWCSUM) != 0)
			FUNC17(ifp, IFCAP_VLAN_HWCSUM);
		if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
		    (FUNC9(ifp) & IFCAP_VLAN_HWTSO) != 0)
			FUNC17(ifp, IFCAP_VLAN_HWTSO);
		if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
		    (FUNC9(ifp) & IFCAP_VLAN_HWTAGGING) != 0) {
			FUNC17(ifp, IFCAP_VLAN_HWTAGGING);
			if ((FUNC10(ifp) & IFCAP_VLAN_HWTAGGING) == 0)
				FUNC14(ifp, 0, IFCAP_VLAN_HWTSO |
				    IFCAP_VLAN_HWCSUM);
			reinit++;
		}
		if (reinit > 0 &&
		    (FUNC11(ifp) & IFF_DRV_RUNNING) != 0) {
			FUNC15(ifp, 0, IFF_DRV_RUNNING);
			FUNC7(sc, 0);
		}
		FUNC2(sc);
		FUNC18(ifp);
		break;

	default:
		error = FUNC4(ifp, command, data);
	}
	return (error);
}