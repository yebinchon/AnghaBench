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
struct ifnet {int if_flags; } ;
struct cas_softc {int sc_mac_rxcfg; int /*<<< orphan*/  sc_dev; struct ifnet* sc_ifp; } ;
typedef  int /*<<< orphan*/  hash ;

/* Variables and functions */
 int BUS_SPACE_BARRIER_READ ; 
 int BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct cas_softc*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cas_softc*,int /*<<< orphan*/ ) ; 
 int CAS_MAC_HASH0 ; 
 int CAS_MAC_HASH1 ; 
 int CAS_MAC_RX_CONF ; 
 int CAS_MAC_RX_CONF_EN ; 
 int CAS_MAC_RX_CONF_HFILTER ; 
 int CAS_MAC_RX_CONF_PGRP ; 
 int CAS_MAC_RX_CONF_PROMISC ; 
 int /*<<< orphan*/  FUNC2 (struct cas_softc*,int,int) ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC3 (struct cas_softc*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cas_hash_maddr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int**) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct cas_softc *sc)
{
	struct ifnet *ifp = sc->sc_ifp;
	int i;
	uint32_t hash[16];
	uint32_t v;

	FUNC1(sc, MA_OWNED);

	/*
	 * Turn off the RX MAC and the hash filter as required by the Sun
	 * Cassini programming restrictions.
	 */
	v = sc->sc_mac_rxcfg & ~(CAS_MAC_RX_CONF_HFILTER |
	    CAS_MAC_RX_CONF_EN);
	FUNC2(sc, CAS_MAC_RX_CONF, v);
	FUNC0(sc, CAS_MAC_RX_CONF, 4,
	    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
	if (!FUNC3(sc, CAS_MAC_RX_CONF, CAS_MAC_RX_CONF_HFILTER |
	    CAS_MAC_RX_CONF_EN, 0))
		FUNC4(sc->sc_dev,
		    "cannot disable RX MAC or hash filter\n");

	v &= ~(CAS_MAC_RX_CONF_PROMISC | CAS_MAC_RX_CONF_PGRP);
	if ((ifp->if_flags & IFF_PROMISC) != 0) {
		v |= CAS_MAC_RX_CONF_PROMISC;
		goto chipit;
	}
	if ((ifp->if_flags & IFF_ALLMULTI) != 0) {
		v |= CAS_MAC_RX_CONF_PGRP;
		goto chipit;
	}

	/*
	 * Set up multicast address filter by passing all multicast
	 * addresses through a crc generator, and then using the high
	 * order 8 bits as an index into the 256 bit logical address
	 * filter.  The high order 4 bits selects the word, while the
	 * other 4 bits select the bit within the word (where bit 0
	 * is the MSB).
	 */

	FUNC6(hash, 0, sizeof(hash));
	FUNC5(ifp, cas_hash_maddr, &hash);

	v |= CAS_MAC_RX_CONF_HFILTER;

	/* Now load the hash table into the chip (if we are using it). */
	for (i = 0; i < 16; i++)
		FUNC2(sc,
		    CAS_MAC_HASH0 + i * (CAS_MAC_HASH1 - CAS_MAC_HASH0),
		    hash[i]);

 chipit:
	sc->sc_mac_rxcfg = v;
	FUNC2(sc, CAS_MAC_RX_CONF, v | CAS_MAC_RX_CONF_EN);
}