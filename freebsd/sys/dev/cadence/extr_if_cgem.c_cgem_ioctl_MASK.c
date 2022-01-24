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
struct cgem_softc {int if_old_flags; int /*<<< orphan*/  miibus; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CGEM_CKSUM_ASSIST ; 
 int /*<<< orphan*/  CGEM_DMA_CFG ; 
 int CGEM_DMA_CFG_CHKSUM_GEN_OFFLOAD_EN ; 
 int /*<<< orphan*/  FUNC0 (struct cgem_softc*) ; 
 int /*<<< orphan*/  CGEM_NET_CFG ; 
 int CGEM_NET_CFG_RX_CHKSUM_OFFLD_EN ; 
 int /*<<< orphan*/  FUNC1 (struct cgem_softc*) ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_RXCSUM_IPV6 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_TXCSUM_IPV6 ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int FUNC2 (struct cgem_softc*,int /*<<< orphan*/ ) ; 
#define  SIOCADDMULTI 133 
#define  SIOCDELMULTI 132 
#define  SIOCGIFMEDIA 131 
#define  SIOCSIFCAP 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int /*<<< orphan*/  FUNC3 (struct cgem_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cgem_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct cgem_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct cgem_softc*) ; 
 struct mii_data* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 struct cgem_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct ifreq*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC17(if_t ifp, u_long cmd, caddr_t data)
{
	struct cgem_softc *sc = FUNC12(ifp);
	struct ifreq *ifr = (struct ifreq *)data;
	struct mii_data *mii;
	int error = 0, mask;

	switch (cmd) {
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if ((FUNC11(ifp) & IFF_UP) != 0) {
			if ((FUNC10(ifp) & IFF_DRV_RUNNING) != 0) {
				if (((FUNC11(ifp) ^ sc->if_old_flags) &
				     (IFF_PROMISC | IFF_ALLMULTI)) != 0) {
					FUNC5(sc);
				}
			} else {
				FUNC4(sc);
			}
		} else if ((FUNC10(ifp) & IFF_DRV_RUNNING) != 0) {
			FUNC14(ifp, 0, IFF_DRV_RUNNING);
			FUNC6(sc);
		}
		sc->if_old_flags = FUNC11(ifp);
		FUNC1(sc);
		break;

	case SIOCADDMULTI:
	case SIOCDELMULTI:
		/* Set up multi-cast filters. */
		if ((FUNC10(ifp) & IFF_DRV_RUNNING) != 0) {
			FUNC0(sc);
			FUNC5(sc);
			FUNC1(sc);
		}
		break;

	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		mii = FUNC7(sc->miibus);
		error = FUNC16(ifp, ifr, &mii->mii_media, cmd);
		break;

	case SIOCSIFCAP:
		FUNC0(sc);
		mask = FUNC9(ifp) ^ ifr->ifr_reqcap;

		if ((mask & IFCAP_TXCSUM) != 0) {
			if ((ifr->ifr_reqcap & IFCAP_TXCSUM) != 0) {
				/* Turn on TX checksumming. */
				FUNC13(ifp, IFCAP_TXCSUM |
						   IFCAP_TXCSUM_IPV6, 0);
				FUNC15(ifp, CGEM_CKSUM_ASSIST, 0);

				FUNC3(sc, CGEM_DMA_CFG,
				    FUNC2(sc, CGEM_DMA_CFG) |
				     CGEM_DMA_CFG_CHKSUM_GEN_OFFLOAD_EN);
			} else {
				/* Turn off TX checksumming. */
				FUNC13(ifp, 0, IFCAP_TXCSUM |
						   IFCAP_TXCSUM_IPV6);
				FUNC15(ifp, 0, CGEM_CKSUM_ASSIST);

				FUNC3(sc, CGEM_DMA_CFG,
				    FUNC2(sc, CGEM_DMA_CFG) &
				     ~CGEM_DMA_CFG_CHKSUM_GEN_OFFLOAD_EN);
			}
		}
		if ((mask & IFCAP_RXCSUM) != 0) {
			if ((ifr->ifr_reqcap & IFCAP_RXCSUM) != 0) {
				/* Turn on RX checksumming. */
				FUNC13(ifp, IFCAP_RXCSUM |
						   IFCAP_RXCSUM_IPV6, 0);
				FUNC3(sc, CGEM_NET_CFG,
				    FUNC2(sc, CGEM_NET_CFG) |
				     CGEM_NET_CFG_RX_CHKSUM_OFFLD_EN);
			} else {
				/* Turn off RX checksumming. */
				FUNC13(ifp, 0, IFCAP_RXCSUM |
						   IFCAP_RXCSUM_IPV6);
				FUNC3(sc, CGEM_NET_CFG,
				    FUNC2(sc, CGEM_NET_CFG) &
				     ~CGEM_NET_CFG_RX_CHKSUM_OFFLD_EN);
			}
		}
		if ((FUNC9(ifp) & (IFCAP_RXCSUM | IFCAP_TXCSUM)) == 
		    (IFCAP_RXCSUM | IFCAP_TXCSUM))
			FUNC13(ifp, IFCAP_VLAN_HWCSUM, 0);
		else
			FUNC13(ifp, 0, IFCAP_VLAN_HWCSUM);

		FUNC1(sc);
		break;
	default:
		error = FUNC8(ifp, cmd, data);
		break;
	}

	return (error);
}