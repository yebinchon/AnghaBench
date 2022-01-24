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
struct xl_softc {int xl_if_flags; int xl_flags; int /*<<< orphan*/  xl_fhandle; int /*<<< orphan*/  xl_ftag; int /*<<< orphan*/  ifmedia; int /*<<< orphan*/ * xl_miibus; } ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_capabilities; int /*<<< orphan*/  if_hwassist; struct xl_softc* if_softc; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xl_softc*,int /*<<< orphan*/ ,int) ; 
 int IFCAP_POLLING ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_WOL_MAGIC ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 133 
#define  SIOCDELMULTI 132 
#define  SIOCGIFMEDIA 131 
#define  SIOCSIFCAP 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int /*<<< orphan*/  XL905B_CSUM_FEATURES ; 
 int XL_CMD_INTR_ACK ; 
 int XL_CMD_INTR_ENB ; 
 int /*<<< orphan*/  XL_COMMAND ; 
 int XL_FLAG_FUNCREG ; 
 int XL_INTRS ; 
 int /*<<< orphan*/  FUNC1 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct mii_data* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ifnet*,int,scalar_t__) ; 
 int FUNC6 (struct ifnet*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct ifnet*) ; 
 int FUNC8 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct xl_softc*) ; 
 int /*<<< orphan*/  xl_poll ; 
 int /*<<< orphan*/  FUNC10 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct xl_softc*) ; 

__attribute__((used)) static int
FUNC12(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct xl_softc		*sc = ifp->if_softc;
	struct ifreq		*ifr = (struct ifreq *) data;
	int			error = 0, mask;
	struct mii_data		*mii = NULL;

	switch (command) {
	case SIOCSIFFLAGS:
		FUNC1(sc);
		if (ifp->if_flags & IFF_UP) {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING &&
			    (ifp->if_flags ^ sc->xl_if_flags) &
			    (IFF_PROMISC | IFF_ALLMULTI))
				FUNC10(sc);
			else
				FUNC9(sc);
		} else {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING)
				FUNC11(sc);
		}
		sc->xl_if_flags = ifp->if_flags;
		FUNC2(sc);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		/* XXX Downcall from if_addmulti() possibly with locks held. */
		FUNC1(sc);
		if (ifp->if_drv_flags & IFF_DRV_RUNNING)
			FUNC10(sc);
		FUNC2(sc);
		break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
		if (sc->xl_miibus != NULL)
			mii = FUNC4(sc->xl_miibus);
		if (mii == NULL)
			error = FUNC8(ifp, ifr,
			    &sc->ifmedia, command);
		else
			error = FUNC8(ifp, ifr,
			    &mii->mii_media, command);
		break;
	case SIOCSIFCAP:
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;
#ifdef DEVICE_POLLING
		if ((mask & IFCAP_POLLING) != 0 &&
		    (ifp->if_capabilities & IFCAP_POLLING) != 0) {
			ifp->if_capenable ^= IFCAP_POLLING;
			if ((ifp->if_capenable & IFCAP_POLLING) != 0) {
				error = ether_poll_register(xl_poll, ifp);
				if (error)
					break;
				XL_LOCK(sc);
				/* Disable interrupts */
				CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_INTR_ENB|0);
				ifp->if_capenable |= IFCAP_POLLING;
				XL_UNLOCK(sc);
			} else {
				error = ether_poll_deregister(ifp);
				/* Enable interrupts. */
				XL_LOCK(sc);
				CSR_WRITE_2(sc, XL_COMMAND,
				    XL_CMD_INTR_ACK | 0xFF);
				CSR_WRITE_2(sc, XL_COMMAND,
				    XL_CMD_INTR_ENB | XL_INTRS);
				if (sc->xl_flags & XL_FLAG_FUNCREG)
					bus_space_write_4(sc->xl_ftag,
					    sc->xl_fhandle, 4, 0x8000);
				XL_UNLOCK(sc);
			}
		}
#endif /* DEVICE_POLLING */
		FUNC1(sc);
		if ((mask & IFCAP_TXCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_TXCSUM) != 0) {
			ifp->if_capenable ^= IFCAP_TXCSUM;
			if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
				ifp->if_hwassist |= XL905B_CSUM_FEATURES;
			else
				ifp->if_hwassist &= ~XL905B_CSUM_FEATURES;
		}
		if ((mask & IFCAP_RXCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_RXCSUM) != 0)
			ifp->if_capenable ^= IFCAP_RXCSUM;
		if ((mask & IFCAP_WOL_MAGIC) != 0 &&
		    (ifp->if_capabilities & IFCAP_WOL_MAGIC) != 0)
			ifp->if_capenable ^= IFCAP_WOL_MAGIC;
		FUNC2(sc);
		break;
	default:
		error = FUNC5(ifp, command, data);
		break;
	}

	return (error);
}