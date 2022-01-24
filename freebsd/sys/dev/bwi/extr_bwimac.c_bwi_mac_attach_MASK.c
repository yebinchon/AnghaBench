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
struct bwi_softc {size_t sc_nmac; scalar_t__ sc_pci_did; int /*<<< orphan*/  sc_dev; struct bwi_mac* sc_mac; } ;
struct bwi_mac {int mac_rev; int /*<<< orphan*/  mac_flags; int /*<<< orphan*/  mac_regwin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwi_mac*,struct bwi_softc*,int,size_t) ; 
 int BWI_DBG_ATTACH ; 
 int BWI_DBG_MAC ; 
 int /*<<< orphan*/  BWI_MAC_F_HAS_TXSTATS ; 
 int /*<<< orphan*/  BWI_MAC_F_PHYE_RESET ; 
 size_t BWI_MAC_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int,char*,char*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_BCM4309 ; 
 size_t* bwi_sup_macrev ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (size_t*) ; 

int
FUNC6(struct bwi_softc *sc, int id, uint8_t rev)
{
	struct bwi_mac *mac;
	int i;

	FUNC3(sc->sc_nmac <= BWI_MAC_MAX && sc->sc_nmac >= 0,
	    ("sc_nmac %d", sc->sc_nmac));

	if (sc->sc_nmac == BWI_MAC_MAX) {
		FUNC4(sc->sc_dev, "too many MACs\n");
		return 0;
	}

	/*
	 * More than one MAC is only supported by BCM4309
	 */
	if (sc->sc_nmac != 0 &&
	    sc->sc_pci_did != PCI_PRODUCT_BROADCOM_BCM4309) {
		FUNC2(sc, BWI_DBG_MAC | BWI_DBG_ATTACH, "%s\n",
			"ignore second MAC");
		return 0;
	}

	mac = &sc->sc_mac[sc->sc_nmac];

	/* XXX will this happen? */
	if (FUNC1(&mac->mac_regwin)) {
		FUNC4(sc->sc_dev, "%dth MAC already attached\n",
			      sc->sc_nmac);
		return 0;
	}

	/*
	 * Test whether the revision of this MAC is supported
	 */
	for (i = 0; i < FUNC5(bwi_sup_macrev); ++i) {
		if (bwi_sup_macrev[i] == rev)
			break;
	}
	if (i == FUNC5(bwi_sup_macrev)) {
		FUNC4(sc->sc_dev, "MAC rev %u is "
			      "not supported\n", rev);
		return ENXIO;
	}

	FUNC0(mac, sc, id, rev);
	sc->sc_nmac++;

	if (mac->mac_rev < 5) {
		mac->mac_flags |= BWI_MAC_F_HAS_TXSTATS;
		FUNC2(sc, BWI_DBG_MAC | BWI_DBG_ATTACH, "%s\n",
			"has TX stats");
	} else {
		mac->mac_flags |= BWI_MAC_F_PHYE_RESET;
	}

	FUNC4(sc->sc_dev, "MAC: rev %u\n", rev);
	return 0;
}