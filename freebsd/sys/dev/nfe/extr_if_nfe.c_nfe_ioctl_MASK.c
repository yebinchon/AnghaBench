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
struct nfe_softc {int nfe_flags; int nfe_if_flags; int /*<<< orphan*/  nfe_miibus; int /*<<< orphan*/  nfe_jumbo_disable; } ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CSUM_TSO ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETHERMIN ; 
 int /*<<< orphan*/  ETHERMTU ; 
 int IFCAP_POLLING ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_WOL_MAGIC ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  NFE_CSUM_FEATURES ; 
 int /*<<< orphan*/  NFE_JUMBO_MTU ; 
 int NFE_JUMBO_SUP ; 
 int /*<<< orphan*/  FUNC0 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*) ; 
#define  SIOCADDMULTI 134 
#define  SIOCDELMULTI 133 
#define  SIOCGIFMEDIA 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct nfe_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC21 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct nfe_softc*) ; 
 int /*<<< orphan*/  nfe_poll ; 
 int /*<<< orphan*/  FUNC23 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC25(if_t ifp, u_long cmd, caddr_t data)
{
	struct nfe_softc *sc;
	struct ifreq *ifr;
	struct mii_data *mii;
	int error, init, mask;

	sc = FUNC11(ifp);
	ifr = (struct ifreq *) data;
	error = 0;
	init = 0;
	switch (cmd) {
	case SIOCSIFMTU:
		if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > NFE_JUMBO_MTU)
			error = EINVAL;
		else if (FUNC10(ifp) != ifr->ifr_mtu) {
			if ((((sc->nfe_flags & NFE_JUMBO_SUP) == 0) ||
			    (sc->nfe_jumbo_disable != 0)) &&
			    ifr->ifr_mtu > ETHERMTU)
				error = EINVAL;
			else {
				FUNC0(sc);
				FUNC15(ifp, ifr->ifr_mtu);
				if (FUNC8(ifp) & IFF_DRV_RUNNING) {
					FUNC13(ifp, 0, IFF_DRV_RUNNING);
					FUNC22(sc);
				}
				FUNC1(sc);
			}
		}
		break;
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if (FUNC9(ifp) & IFF_UP) {
			/*
			 * If only the PROMISC or ALLMULTI flag changes, then
			 * don't do a full re-init of the chip, just update
			 * the Rx filter.
			 */
			if ((FUNC8(ifp) & IFF_DRV_RUNNING) &&
			    ((FUNC9(ifp) ^ sc->nfe_if_flags) &
			     (IFF_ALLMULTI | IFF_PROMISC)) != 0)
				FUNC23(sc);
			else
				FUNC22(sc);
		} else {
			if (FUNC8(ifp) & IFF_DRV_RUNNING)
				FUNC24(ifp);
		}
		sc->nfe_if_flags = FUNC9(ifp);
		FUNC1(sc);
		error = 0;
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		if ((FUNC8(ifp) & IFF_DRV_RUNNING) != 0) {
			FUNC0(sc);
			FUNC23(sc);
			FUNC1(sc);
			error = 0;
		}
		break;
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		mii = FUNC2(sc->nfe_miibus);
		error = FUNC18(ifp, ifr, &mii->mii_media, cmd);
		break;
	case SIOCSIFCAP:
		mask = ifr->ifr_reqcap ^ FUNC7(ifp);
#ifdef DEVICE_POLLING
		if ((mask & IFCAP_POLLING) != 0) {
			if ((ifr->ifr_reqcap & IFCAP_POLLING) != 0) {
				error = ether_poll_register(nfe_poll, ifp);
				if (error)
					break;
				NFE_LOCK(sc);
				nfe_disable_intr(sc);
				if_setcapenablebit(ifp, IFCAP_POLLING, 0);
				NFE_UNLOCK(sc);
			} else {
				error = ether_poll_deregister(ifp);
				/* Enable interrupt even in error case */
				NFE_LOCK(sc);
				nfe_enable_intr(sc);
				if_setcapenablebit(ifp, 0, IFCAP_POLLING);
				NFE_UNLOCK(sc);
			}
		}
#endif /* DEVICE_POLLING */
		if ((mask & IFCAP_WOL_MAGIC) != 0 &&
		    (FUNC6(ifp) & IFCAP_WOL_MAGIC) != 0)
			FUNC16(ifp, IFCAP_WOL_MAGIC);
		if ((mask & IFCAP_TXCSUM) != 0 &&
		    (FUNC6(ifp) & IFCAP_TXCSUM) != 0) {
			FUNC16(ifp, IFCAP_TXCSUM);
			if ((FUNC7(ifp) & IFCAP_TXCSUM) != 0)
				FUNC14(ifp, NFE_CSUM_FEATURES, 0);
			else
				FUNC14(ifp, 0, NFE_CSUM_FEATURES);
		}
		if ((mask & IFCAP_RXCSUM) != 0 &&
		    (FUNC6(ifp) & IFCAP_RXCSUM) != 0) {
			FUNC16(ifp, IFCAP_RXCSUM);
			init++;
		}
		if ((mask & IFCAP_TSO4) != 0 &&
		    (FUNC6(ifp) & IFCAP_TSO4) != 0) {
			FUNC16(ifp, IFCAP_TSO4);
			if ((IFCAP_TSO4 & FUNC7(ifp)) != 0)
				FUNC14(ifp, CSUM_TSO, 0);
			else
				FUNC14(ifp, 0, CSUM_TSO);
		}
		if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
		    (FUNC6(ifp) & IFCAP_VLAN_HWTSO) != 0)
			FUNC16(ifp, IFCAP_VLAN_HWTSO);
		if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
		    (FUNC6(ifp) & IFCAP_VLAN_HWTAGGING) != 0) {
			FUNC16(ifp, IFCAP_VLAN_HWTAGGING);
			if ((FUNC7(ifp) & IFCAP_VLAN_HWTAGGING) == 0)
				FUNC12(ifp, 0, IFCAP_VLAN_HWTSO);
			init++;
		}
		/*
		 * XXX
		 * It seems that VLAN stripping requires Rx checksum offload.
		 * Unfortunately FreeBSD has no way to disable only Rx side
		 * VLAN stripping. So when we know Rx checksum offload is
		 * disabled turn entire hardware VLAN assist off.
		 */
		if ((FUNC7(ifp) & IFCAP_RXCSUM) == 0) {
			if ((FUNC7(ifp) & IFCAP_VLAN_HWTAGGING) != 0)
				init++;
			FUNC12(ifp, 0,
			    (IFCAP_VLAN_HWTAGGING | IFCAP_VLAN_HWTSO));
		}
		if (init > 0 && (FUNC8(ifp) & IFF_DRV_RUNNING) != 0) {
			FUNC13(ifp, 0, IFF_DRV_RUNNING);
			FUNC21(sc);
		}
		FUNC17(ifp);
		break;
	default:
		error = FUNC3(ifp, cmd, data);
		break;
	}

	return (error);
}