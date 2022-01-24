#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct bwi_softc {scalar_t__ sc_pci_did; scalar_t__ sc_nmac; TYPE_1__* sc_mac; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_bus_regwin; int /*<<< orphan*/  sc_com_regwin; void* sc_cap; void* sc_bbp_pkg; void* sc_bbp_rev; scalar_t__ sc_bbp_id; int /*<<< orphan*/  sc_pci_revid; } ;
struct TYPE_6__ {scalar_t__ did_min; scalar_t__ did_max; scalar_t__ bbp_id; int nregwin; } ;
struct TYPE_5__ {int /*<<< orphan*/  mac_regwin; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_CAPABILITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,scalar_t__,int) ; 
 int /*<<< orphan*/  BWI_DBG_ATTACH ; 
 int /*<<< orphan*/  BWI_INFO ; 
 int /*<<< orphan*/  BWI_INFO_BBPID_MASK ; 
 int /*<<< orphan*/  BWI_INFO_BBPPKG_MASK ; 
 int /*<<< orphan*/  BWI_INFO_BBPREV_MASK ; 
 int /*<<< orphan*/  BWI_INFO_NREGWIN_MASK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ BWI_REGWIN_T_BUSPCI ; 
 scalar_t__ BWI_REGWIN_T_BUSPCIE ; 
 scalar_t__ BWI_REGWIN_T_COM ; 
 scalar_t__ BWI_REGWIN_T_MAC ; 
 void* FUNC2 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_softc*,int /*<<< orphan*/ ,char*,int,void*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* bwi_bbpid_map ; 
 int /*<<< orphan*/  FUNC7 (struct bwi_softc*,int,int) ; 
 TYPE_2__* bwi_regwin_count ; 
 int /*<<< orphan*/  FUNC8 (struct bwi_softc*,scalar_t__*,int*) ; 
 int FUNC9 (struct bwi_softc*,int) ; 
 int FUNC10 (struct bwi_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC12 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC13(struct bwi_softc *sc)
{
	uint16_t bbp_id, rw_type;
	uint8_t rw_rev;
	uint32_t info;
	int error, nregwin, i;

	/*
	 * Get 0th regwin information
	 * NOTE: 0th regwin should exist
	 */
	error = FUNC9(sc, 0);
	if (error) {
		FUNC11(sc->sc_dev, "can't select regwin 0\n");
		return error;
	}
	FUNC8(sc, &rw_type, &rw_rev);

	/*
	 * Find out BBP id
	 */
	bbp_id = 0;
	info = 0;
	if (rw_type == BWI_REGWIN_T_COM) {
		info = FUNC2(sc, BWI_INFO);
		bbp_id = FUNC6(info, BWI_INFO_BBPID_MASK);

		FUNC0(&sc->sc_com_regwin, 0, rw_type, rw_rev);

		sc->sc_cap = FUNC2(sc, BWI_CAPABILITY);
	} else {
		for (i = 0; i < FUNC12(bwi_bbpid_map); ++i) {
			if (sc->sc_pci_did >= bwi_bbpid_map[i].did_min &&
			    sc->sc_pci_did <= bwi_bbpid_map[i].did_max) {
				bbp_id = bwi_bbpid_map[i].bbp_id;
				break;
			}
		}
		if (bbp_id == 0) {
			FUNC11(sc->sc_dev, "no BBP id for device id "
				      "0x%04x\n", sc->sc_pci_did);
			return ENXIO;
		}

		info = FUNC5(sc->sc_pci_revid, BWI_INFO_BBPREV_MASK) |
		       FUNC5(0, BWI_INFO_BBPPKG_MASK);
	}

	/*
	 * Find out number of regwins
	 */
	nregwin = 0;
	if (rw_type == BWI_REGWIN_T_COM && rw_rev >= 4) {
		nregwin = FUNC6(info, BWI_INFO_NREGWIN_MASK);
	} else {
		for (i = 0; i < FUNC12(bwi_regwin_count); ++i) {
			if (bwi_regwin_count[i].bbp_id == bbp_id) {
				nregwin = bwi_regwin_count[i].nregwin;
				break;
			}
		}
		if (nregwin == 0) {
			FUNC11(sc->sc_dev, "no number of win for "
				      "BBP id 0x%04x\n", bbp_id);
			return ENXIO;
		}
	}

	/* Record BBP id/rev for later using */
	sc->sc_bbp_id = bbp_id;
	sc->sc_bbp_rev = FUNC6(info, BWI_INFO_BBPREV_MASK);
	sc->sc_bbp_pkg = FUNC6(info, BWI_INFO_BBPPKG_MASK);
	FUNC11(sc->sc_dev, "BBP: id 0x%04x, rev 0x%x, pkg %d\n",
		      sc->sc_bbp_id, sc->sc_bbp_rev, sc->sc_bbp_pkg);

	FUNC3(sc, BWI_DBG_ATTACH, "nregwin %d, cap 0x%08x\n",
		nregwin, sc->sc_cap);

	/*
	 * Create rest of the regwins
	 */

	/* Don't re-create common regwin, if it is already created */
	i = FUNC1(&sc->sc_com_regwin) ? 1 : 0;

	for (; i < nregwin; ++i) {
		/*
		 * Get regwin information
		 */
		error = FUNC9(sc, i);
		if (error) {
			FUNC11(sc->sc_dev,
				      "can't select regwin %d\n", i);
			return error;
		}
		FUNC8(sc, &rw_type, &rw_rev);

		/*
		 * Try attach:
		 * 1) Bus (PCI/PCIE) regwin
		 * 2) MAC regwin
		 * Ignore rest types of regwin
		 */
		if (rw_type == BWI_REGWIN_T_BUSPCI ||
		    rw_type == BWI_REGWIN_T_BUSPCIE) {
			if (FUNC1(&sc->sc_bus_regwin)) {
				FUNC11(sc->sc_dev,
					      "bus regwin already exists\n");
			} else {
				FUNC0(&sc->sc_bus_regwin, i,
						  rw_type, rw_rev);
			}
		} else if (rw_type == BWI_REGWIN_T_MAC) {
			/* XXX ignore return value */
			FUNC7(sc, i, rw_rev);
		}
	}

	/* At least one MAC shold exist */
	if (!FUNC1(&sc->sc_mac[0].mac_regwin)) {
		FUNC11(sc->sc_dev, "no MAC was found\n");
		return ENXIO;
	}
	FUNC4(sc->sc_nmac > 0, ("no mac's"));

	/* Bus regwin must exist */
	if (!FUNC1(&sc->sc_bus_regwin)) {
		FUNC11(sc->sc_dev, "no bus regwin was found\n");
		return ENXIO;
	}

	/* Start with first MAC */
	error = FUNC10(sc, &sc->sc_mac[0].mac_regwin, NULL);
	if (error)
		return error;

	return 0;
}