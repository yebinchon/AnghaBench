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
struct bwi_regwin {int rw_rev; scalar_t__ rw_type; } ;
struct bwi_softc {int sc_flags; struct bwi_regwin sc_com_regwin; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * sc_cur_regwin; struct bwi_regwin sc_bus_regwin; } ;
struct bwi_mac {int mac_id; int /*<<< orphan*/  mac_regwin; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_BUS_ADDR ; 
 int /*<<< orphan*/  BWI_BUS_ADDR_MAGIC ; 
 int /*<<< orphan*/  BWI_BUS_CONFIG ; 
 int BWI_BUS_CONFIG_BURST ; 
 int BWI_BUS_CONFIG_MRM ; 
 int BWI_BUS_CONFIG_PREFETCH ; 
 int /*<<< orphan*/  BWI_BUS_DATA ; 
 int /*<<< orphan*/  BWI_CONF_LO ; 
 int /*<<< orphan*/  BWI_CONF_LO_REQTO ; 
 int /*<<< orphan*/  BWI_CONF_LO_REQTO_MASK ; 
 int /*<<< orphan*/  BWI_CONF_LO_SERVTO ; 
 int /*<<< orphan*/  BWI_CONF_LO_SERVTO_MASK ; 
 int /*<<< orphan*/  BWI_FLAGS ; 
 int BWI_FLAGS_INTR_MASK ; 
 int BWI_F_BUS_INITED ; 
 int /*<<< orphan*/  BWI_INTRVEC ; 
 int /*<<< orphan*/  BWI_PCIR_INTCTL ; 
 scalar_t__ FUNC0 (struct bwi_regwin*) ; 
 scalar_t__ BWI_REGWIN_T_BUSPCI ; 
 int FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bwi_softc*,struct bwi_regwin*,struct bwi_regwin**) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int
FUNC9(struct bwi_softc *sc, struct bwi_mac *mac)
{
	struct bwi_regwin *old, *bus;
	uint32_t val;
	int error;

	bus = &sc->sc_bus_regwin;
	FUNC4(sc->sc_cur_regwin == &mac->mac_regwin, ("not cur regwin"));

	/*
	 * Tell bus to generate requested interrupts
	 */
	if (bus->rw_rev < 6 && bus->rw_type == BWI_REGWIN_T_BUSPCI) {
		/*
		 * NOTE: Read BWI_FLAGS from MAC regwin
		 */
		val = FUNC1(sc, BWI_FLAGS);

		error = FUNC6(sc, bus, &old);
		if (error)
			return error;

		FUNC2(sc, BWI_INTRVEC, (val & BWI_FLAGS_INTR_MASK));
	} else {
		uint32_t mac_mask;

		mac_mask = 1 << mac->mac_id;

		error = FUNC6(sc, bus, &old);
		if (error)
			return error;

		val = FUNC7(sc->sc_dev, BWI_PCIR_INTCTL, 4);
		val |= mac_mask << 8;
		FUNC8(sc->sc_dev, BWI_PCIR_INTCTL, val, 4);
	}

	if (sc->sc_flags & BWI_F_BUS_INITED)
		goto back;

	if (bus->rw_type == BWI_REGWIN_T_BUSPCI) {
		/*
		 * Enable prefetch and burst
		 */
		FUNC2(sc, BWI_BUS_CONFIG,
			      BWI_BUS_CONFIG_PREFETCH | BWI_BUS_CONFIG_BURST);

		if (bus->rw_rev < 5) {
			struct bwi_regwin *com = &sc->sc_com_regwin;

			/*
			 * Configure timeouts for bus operation
			 */

			/*
			 * Set service timeout and request timeout
			 */
			FUNC2(sc, BWI_CONF_LO,
			FUNC5(BWI_CONF_LO_SERVTO, BWI_CONF_LO_SERVTO_MASK) |
			FUNC5(BWI_CONF_LO_REQTO, BWI_CONF_LO_REQTO_MASK));

			/*
			 * If there is common regwin, we switch to that regwin
			 * and switch back to bus regwin once we have done.
			 */
			if (FUNC0(com)) {
				error = FUNC6(sc, com, NULL);
				if (error)
					return error;
			}

			/* Let bus know what we have changed */
			FUNC3(sc, BWI_BUS_ADDR, BWI_BUS_ADDR_MAGIC);
			FUNC1(sc, BWI_BUS_ADDR); /* Flush */
			FUNC3(sc, BWI_BUS_DATA, 0);
			FUNC1(sc, BWI_BUS_DATA); /* Flush */

			if (FUNC0(com)) {
				error = FUNC6(sc, bus, NULL);
				if (error)
					return error;
			}
		} else if (bus->rw_rev >= 11) {
			/*
			 * Enable memory read multiple
			 */
			FUNC2(sc, BWI_BUS_CONFIG, BWI_BUS_CONFIG_MRM);
		}
	} else {
		/* TODO:PCIE */
	}

	sc->sc_flags |= BWI_F_BUS_INITED;
back:
	return FUNC6(sc, old, NULL);
}