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
typedef  int /*<<< orphan*/  u32 ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int ifr_reqcap; scalar_t__ ifr_mtu; } ;
struct ifnet {int if_drv_flags; int if_flags; int if_capenable; int if_capabilities; int /*<<< orphan*/  if_hwassist; scalar_t__ if_mtu; struct bce_softc* if_softc; } ;
struct bce_softc {int bce_flags; int bce_phy_flags; int /*<<< orphan*/  bce_miibus; int /*<<< orphan*/  bce_ifmedia; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCE_DRV_MSG_CODE_RESET ; 
 int /*<<< orphan*/  BCE_IF_HWASSIST ; 
 int /*<<< orphan*/  BCE_INFO_MISC ; 
 int /*<<< orphan*/  FUNC0 (struct bce_softc*) ; 
 scalar_t__ BCE_MAX_JUMBO_MTU ; 
 int BCE_MFW_ENABLE_FLAG ; 
 scalar_t__ BCE_MIN_MTU ; 
 int BCE_PHY_REMOTE_CAP_FLAG ; 
 int /*<<< orphan*/  FUNC1 (struct bce_softc*) ; 
 int /*<<< orphan*/  BCE_VERBOSE_MISC ; 
 int /*<<< orphan*/  BCE_VERBOSE_SPECIAL ; 
 int /*<<< orphan*/  CSUM_TSO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bce_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int EINVAL ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 134 
#define  SIOCDELMULTI 133 
#define  SIOCGIFMEDIA 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bce_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct bce_softc*) ; 
 int /*<<< orphan*/  bce_tso_enable ; 
 struct mii_data* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ifnet*,int,scalar_t__) ; 
 int FUNC14 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC15(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct bce_softc *sc = ifp->if_softc;
	struct ifreq *ifr = (struct ifreq *) data;
	struct mii_data *mii;
	int mask, error = 0;

	FUNC2(BCE_VERBOSE_MISC);

	switch(command) {

	/* Set the interface MTU. */
	case SIOCSIFMTU:
		/* Check that the MTU setting is supported. */
		if ((ifr->ifr_mtu < BCE_MIN_MTU) ||
			(ifr->ifr_mtu > BCE_MAX_JUMBO_MTU)) {
			error = EINVAL;
			break;
		}

		FUNC4(sc, BCE_INFO_MISC,
		    "SIOCSIFMTU: Changing MTU from %d to %d\n",
		    (int) ifp->if_mtu, (int) ifr->ifr_mtu);

		FUNC0(sc);
		ifp->if_mtu = ifr->ifr_mtu;
		if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			FUNC7(sc);
		}
		FUNC1(sc);
		break;

	/* Set interface flags. */
	case SIOCSIFFLAGS:
		FUNC4(sc, BCE_VERBOSE_SPECIAL, "Received SIOCSIFFLAGS\n");

		FUNC0(sc);

		/* Check if the interface is up. */
		if (ifp->if_flags & IFF_UP) {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
				/* Change promiscuous/multicast flags as necessary. */
				FUNC10(sc);
			} else {
				/* Start the HW */
				FUNC7(sc);
			}
		} else {
			/* The interface is down, check if driver is running. */
			if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
				FUNC11(sc);

				/* If MFW is running, restart the controller a bit. */
				if (sc->bce_flags & BCE_MFW_ENABLE_FLAG) {
					FUNC9(sc, BCE_DRV_MSG_CODE_RESET);
					FUNC6(sc);
					FUNC8(sc);
				}
			}
		}

		FUNC1(sc);
		break;

	/* Add/Delete multicast address */
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC4(sc, BCE_VERBOSE_MISC,
		    "Received SIOCADDMULTI/SIOCDELMULTI\n");

		FUNC0(sc);
		if (ifp->if_drv_flags & IFF_DRV_RUNNING)
			FUNC10(sc);
		FUNC1(sc);

		break;

	/* Set/Get Interface media */
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		FUNC4(sc, BCE_VERBOSE_MISC,
		    "Received SIOCSIFMEDIA/SIOCGIFMEDIA\n");
		if ((sc->bce_phy_flags & BCE_PHY_REMOTE_CAP_FLAG) != 0)
			error = FUNC14(ifp, ifr, &sc->bce_ifmedia,
			    command);
		else {
			mii = FUNC12(sc->bce_miibus);
			error = FUNC14(ifp, ifr, &mii->mii_media,
			    command);
		}
		break;

	/* Set interface capability */
	case SIOCSIFCAP:
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;
		FUNC4(sc, BCE_INFO_MISC,
		    "Received SIOCSIFCAP = 0x%08X\n", (u32) mask);

		/* Toggle the TX checksum capabilities enable flag. */
		if (mask & IFCAP_TXCSUM &&
		    ifp->if_capabilities & IFCAP_TXCSUM) {
			ifp->if_capenable ^= IFCAP_TXCSUM;
			if (IFCAP_TXCSUM & ifp->if_capenable)
				ifp->if_hwassist |= BCE_IF_HWASSIST;
			else
				ifp->if_hwassist &= ~BCE_IF_HWASSIST;
		}

		/* Toggle the RX checksum capabilities enable flag. */
		if (mask & IFCAP_RXCSUM &&
		    ifp->if_capabilities & IFCAP_RXCSUM)
			ifp->if_capenable ^= IFCAP_RXCSUM;

		/* Toggle the TSO capabilities enable flag. */
		if (bce_tso_enable && (mask & IFCAP_TSO4) &&
		    ifp->if_capabilities & IFCAP_TSO4) {
			ifp->if_capenable ^= IFCAP_TSO4;
			if (IFCAP_TSO4 & ifp->if_capenable)
				ifp->if_hwassist |= CSUM_TSO;
			else
				ifp->if_hwassist &= ~CSUM_TSO;
		}

		if (mask & IFCAP_VLAN_HWCSUM &&
		    ifp->if_capabilities & IFCAP_VLAN_HWCSUM)
			ifp->if_capenable ^= IFCAP_VLAN_HWCSUM;

		if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
		    (ifp->if_capabilities & IFCAP_VLAN_HWTSO) != 0)
			ifp->if_capenable ^= IFCAP_VLAN_HWTSO;
		/*
		 * Don't actually disable VLAN tag stripping as
		 * management firmware (ASF/IPMI/UMP) requires the
		 * feature. If VLAN tag stripping is disabled driver
		 * will manually reconstruct the VLAN frame by
		 * appending stripped VLAN tag.
		 */
		if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
		    (ifp->if_capabilities & IFCAP_VLAN_HWTAGGING)) {
			ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
			if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING)
			    == 0)
				ifp->if_capenable &= ~IFCAP_VLAN_HWTSO;
		}
		FUNC5(ifp);
		break;
	default:
		/* We don't know how to handle the IOCTL, pass it on. */
		error = FUNC13(ifp, command, data);
		break;
	}

	FUNC3(BCE_VERBOSE_MISC);
	return(error);
}