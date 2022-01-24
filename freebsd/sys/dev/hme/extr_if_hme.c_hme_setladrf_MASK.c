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
typedef  int u_int32_t ;
struct ifnet {int if_flags; } ;
struct hme_softc {int /*<<< orphan*/  sc_dev; struct ifnet* sc_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HME_MACI_HASHTAB0 ; 
 int /*<<< orphan*/  HME_MACI_HASHTAB1 ; 
 int /*<<< orphan*/  HME_MACI_HASHTAB2 ; 
 int /*<<< orphan*/  HME_MACI_HASHTAB3 ; 
 int /*<<< orphan*/  HME_MACI_RXCFG ; 
 int FUNC1 (struct hme_softc*,int /*<<< orphan*/ ) ; 
 int HME_MAC_RXCFG_ENABLE ; 
 int HME_MAC_RXCFG_HENABLE ; 
 int HME_MAC_RXCFG_ME ; 
 int HME_MAC_RXCFG_PGRP ; 
 int HME_MAC_RXCFG_PMISC ; 
 int /*<<< orphan*/  FUNC2 (struct hme_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hme_hash_maddr ; 
 int /*<<< orphan*/  FUNC4 (struct hme_softc*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int**) ; 

__attribute__((used)) static void
FUNC6(struct hme_softc *sc, int reenable)
{
	struct ifnet *ifp = sc->sc_ifp;
	u_int32_t hash[4];
	u_int32_t macc;

	FUNC0(sc, MA_OWNED);
	/* Clear the hash table. */
	hash[3] = hash[2] = hash[1] = hash[0] = 0;

	/* Get the current RX configuration. */
	macc = FUNC1(sc, HME_MACI_RXCFG);

	/*
	 * Turn off promiscuous mode, promiscuous group mode (all multicast),
	 * and hash filter.  Depending on the case, the right bit will be
	 * enabled.
	 */
	macc &= ~(HME_MAC_RXCFG_PGRP | HME_MAC_RXCFG_PMISC);

	/*
	 * Disable the receiver while changing it's state as the documentation
	 * mandates.
	 * We then must wait until the bit clears in the register. This should
	 * take at most 3.5ms.
	 */
	if (!FUNC4(sc, HME_MACI_RXCFG, macc,
	    HME_MAC_RXCFG_ENABLE, 0))
		FUNC3(sc->sc_dev, "cannot disable RX MAC\n");
	/* Disable the hash filter before writing to the filter registers. */
	if (!FUNC4(sc, HME_MACI_RXCFG, macc,
	    HME_MAC_RXCFG_HENABLE, 0))
		FUNC3(sc->sc_dev, "cannot disable hash filter\n");

	/* Make the RX MAC really SIMPLEX. */
	macc |= HME_MAC_RXCFG_ME;
	if (reenable)
		macc |= HME_MAC_RXCFG_ENABLE;
	else
		macc &= ~HME_MAC_RXCFG_ENABLE;

	if ((ifp->if_flags & IFF_PROMISC) != 0) {
		macc |= HME_MAC_RXCFG_PMISC;
		goto chipit;
	}
	if ((ifp->if_flags & IFF_ALLMULTI) != 0) {
		macc |= HME_MAC_RXCFG_PGRP;
		goto chipit;
	}

	macc |= HME_MAC_RXCFG_HENABLE;

	/*
	 * Set up multicast address filter by passing all multicast addresses
	 * through a crc generator, and then using the high order 6 bits as an
	 * index into the 64 bit logical address filter.  The high order bit
	 * selects the word, while the rest of the bits select the bit within
	 * the word.
	 */
	FUNC5(ifp, hme_hash_maddr, &hash);

chipit:
	/* Now load the hash table into the chip */
	FUNC2(sc, HME_MACI_HASHTAB0, hash[0]);
	FUNC2(sc, HME_MACI_HASHTAB1, hash[1]);
	FUNC2(sc, HME_MACI_HASHTAB2, hash[2]);
	FUNC2(sc, HME_MACI_HASHTAB3, hash[3]);
	if (!FUNC4(sc, HME_MACI_RXCFG, macc, 0,
	    macc & (HME_MAC_RXCFG_ENABLE | HME_MAC_RXCFG_HENABLE |
	    HME_MAC_RXCFG_ME)))
		FUNC3(sc->sc_dev, "cannot configure RX MAC\n");
}