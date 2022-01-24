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
typedef  int uint32_t ;
struct usb_ether {int dummy; } ;
struct smsc_softc {int sc_mac_csr; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  SMSC_HASHH ; 
 int /*<<< orphan*/  SMSC_HASHL ; 
 int /*<<< orphan*/  FUNC0 (struct smsc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMSC_MAC_CSR ; 
 int SMSC_MAC_CSR_HPFILT ; 
 int SMSC_MAC_CSR_MCPAS ; 
 int SMSC_MAC_CSR_PRMS ; 
 scalar_t__ FUNC1 (struct ifnet*,int /*<<< orphan*/ ,int**) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc_softc*,char*) ; 
 int /*<<< orphan*/  smsc_hash_maddr ; 
 int /*<<< orphan*/  FUNC3 (struct smsc_softc*,int /*<<< orphan*/ ,int) ; 
 struct ifnet* FUNC4 (struct usb_ether*) ; 
 struct smsc_softc* FUNC5 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC6(struct usb_ether *ue)
{
	struct smsc_softc *sc = FUNC5(ue);
	struct ifnet *ifp = FUNC4(ue);
	uint32_t hashtbl[2] = { 0, 0 };

	FUNC0(sc, MA_OWNED);

	if (ifp->if_flags & (IFF_ALLMULTI | IFF_PROMISC)) {
		FUNC2(sc, "receive all multicast enabled\n");
		sc->sc_mac_csr |= SMSC_MAC_CSR_MCPAS;
		sc->sc_mac_csr &= ~SMSC_MAC_CSR_HPFILT;
		
	} else {
		if (FUNC1(ifp, smsc_hash_maddr, &hashtbl) > 0) {
			/* We are filtering on a set of address so calculate
			 * hashes of each of the address and set the
			 * corresponding bits in the register.
			 */
			sc->sc_mac_csr |= SMSC_MAC_CSR_HPFILT;
			sc->sc_mac_csr &= ~(SMSC_MAC_CSR_PRMS | SMSC_MAC_CSR_MCPAS);
		} else {
			/* Only receive packets with destination set to
			 * our mac address
			 */
			sc->sc_mac_csr &= ~(SMSC_MAC_CSR_MCPAS | SMSC_MAC_CSR_HPFILT);
		}
		
		/* Debug */
		if (sc->sc_mac_csr & SMSC_MAC_CSR_HPFILT)
			FUNC2(sc, "receive select group of macs\n");
		else
			FUNC2(sc, "receive own packets only\n");
	}

	/* Write the hash table and mac control registers */
	FUNC3(sc, SMSC_HASHH, hashtbl[1]);
	FUNC3(sc, SMSC_HASHL, hashtbl[0]);
	FUNC3(sc, SMSC_MAC_CSR, sc->sc_mac_csr);
}