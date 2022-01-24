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
typedef  int uint16_t ;
struct usb_ether {int dummy; } ;
struct ifnet {int if_capenable; } ;
struct axe_softc {int sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXE_772B_CMD_WRITE_RXCSUM ; 
 int /*<<< orphan*/  AXE_772B_CMD_WRITE_TXCSUM ; 
 int AXE_FLAG_772B ; 
 int /*<<< orphan*/  FUNC0 (struct axe_softc*,int /*<<< orphan*/ ) ; 
 int AXE_RXCSUM_ICMP ; 
 int AXE_RXCSUM_IGMP ; 
 int AXE_RXCSUM_IP ; 
 int AXE_RXCSUM_IPVE ; 
 int AXE_RXCSUM_TCP ; 
 int AXE_RXCSUM_UDP ; 
 int AXE_TXCSUM_IP ; 
 int AXE_TXCSUM_TCP ; 
 int AXE_TXCSUM_UDP ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TXCSUM ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct axe_softc*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 struct ifnet* FUNC2 (struct usb_ether*) ; 
 struct axe_softc* FUNC3 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC4(struct usb_ether *ue)
{
	struct axe_softc *sc;
	struct ifnet *ifp;
	uint16_t csum1, csum2;

	sc = FUNC3(ue);
	FUNC0(sc, MA_OWNED);

	if ((sc->sc_flags & AXE_FLAG_772B) != 0) {
		ifp = FUNC2(ue);
		csum1 = 0;
		csum2 = 0;
		if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
			csum1 |= AXE_TXCSUM_IP | AXE_TXCSUM_TCP |
			    AXE_TXCSUM_UDP;
		FUNC1(sc, AXE_772B_CMD_WRITE_TXCSUM, csum2, csum1, NULL);
		csum1 = 0;
		csum2 = 0;
		if ((ifp->if_capenable & IFCAP_RXCSUM) != 0)
			csum1 |= AXE_RXCSUM_IP | AXE_RXCSUM_IPVE |
			    AXE_RXCSUM_TCP | AXE_RXCSUM_UDP | AXE_RXCSUM_ICMP |
			    AXE_RXCSUM_IGMP;
		FUNC1(sc, AXE_772B_CMD_WRITE_RXCSUM, csum2, csum1, NULL);
	}
}