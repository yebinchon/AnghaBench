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
typedef  size_t uint8_t ;
struct usb_ether {int dummy; } ;
struct muge_softc {int sc_rfe_ctl; scalar_t__** sc_pfilter_table; scalar_t__* sc_mchash_table; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 size_t ETH_DP_SEL_VHF_HASH_LEN ; 
 int /*<<< orphan*/  ETH_RFE_CTL ; 
 int ETH_RFE_CTL_BCAST_EN_ ; 
 int ETH_RFE_CTL_DA_PERFECT_ ; 
 int ETH_RFE_CTL_MCAST_EN_ ; 
 int ETH_RFE_CTL_MCAST_HASH_ ; 
 int ETH_RFE_CTL_UCAST_EN_ ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct muge_softc*,int /*<<< orphan*/ ) ; 
 size_t MUGE_NUM_PFILTER_ADDRS_ ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ,struct muge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct muge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct muge_softc*,char*) ; 
 int /*<<< orphan*/  muge_hash_maddr ; 
 int /*<<< orphan*/  FUNC4 (struct muge_softc*) ; 
 struct ifnet* FUNC5 (struct usb_ether*) ; 
 struct muge_softc* FUNC6 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC7(struct usb_ether *ue)
{
	struct muge_softc *sc = FUNC6(ue);
	struct ifnet *ifp = FUNC5(ue);
	uint8_t i;

	FUNC0(sc, MA_OWNED);

	sc->sc_rfe_ctl &= ~(ETH_RFE_CTL_UCAST_EN_ | ETH_RFE_CTL_MCAST_EN_ |
		ETH_RFE_CTL_DA_PERFECT_ | ETH_RFE_CTL_MCAST_HASH_);

	/* Initialize hash filter table. */
	for (i = 0; i < ETH_DP_SEL_VHF_HASH_LEN; i++)
		sc->sc_mchash_table[i] = 0;

	/* Initialize perfect filter table. */
	for (i = 1; i < MUGE_NUM_PFILTER_ADDRS_; i++) {
		sc->sc_pfilter_table[i][0] =
		sc->sc_pfilter_table[i][1] = 0;
	}

	sc->sc_rfe_ctl |= ETH_RFE_CTL_BCAST_EN_;

	if (ifp->if_flags & IFF_PROMISC) {
		FUNC3(sc, "promiscuous mode enabled\n");
		sc->sc_rfe_ctl |= ETH_RFE_CTL_MCAST_EN_ | ETH_RFE_CTL_UCAST_EN_;
	} else if (ifp->if_flags & IFF_ALLMULTI){
		FUNC3(sc, "receive all multicast enabled\n");
		sc->sc_rfe_ctl |= ETH_RFE_CTL_MCAST_EN_;
	} else {
		FUNC1(ifp, muge_hash_maddr, sc);
		FUNC4(sc);
	}
	FUNC2(sc, ETH_RFE_CTL, sc->sc_rfe_ctl);
}