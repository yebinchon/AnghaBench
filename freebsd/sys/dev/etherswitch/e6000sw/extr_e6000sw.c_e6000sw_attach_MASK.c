#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ phandle_t ;
struct TYPE_20__ {int ports_mask; int /*<<< orphan*/  kproc; int /*<<< orphan*/  num_ports; int /*<<< orphan*/  dev; int /*<<< orphan*/  node; int /*<<< orphan*/  sx; int /*<<< orphan*/  sw_addr; } ;
typedef  TYPE_1__ e6000sw_softc_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_21__ {int /*<<< orphan*/  es_nports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  ETHERSWITCH_VLAN_PORT ; 
 int /*<<< orphan*/  MV88E6141 ; 
 int /*<<< orphan*/  MV88E6190 ; 
 int /*<<< orphan*/  MV88E6341 ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  PSC_CONTROL ; 
 int PSC_CONTROL_ALT_SPD ; 
 int PSC_CONTROL_FC_ON ; 
 int PSC_CONTROL_FORCED_DPX ; 
 int PSC_CONTROL_FORCED_EEE ; 
 int PSC_CONTROL_FORCED_FC ; 
 int PSC_CONTROL_FORCED_LINK ; 
 int PSC_CONTROL_FORCED_SPD ; 
 int PSC_CONTROL_FULLDPX ; 
 int PSC_CONTROL_LINK_UP ; 
 int PSC_CONTROL_SPD1000 ; 
 int PSC_CONTROL_SPD2500 ; 
 int /*<<< orphan*/  REG_GLOBAL ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  SWITCH_GLOBAL_STATUS ; 
 int SWITCH_GLOBAL_STATUS_IR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*,int) ; 
 scalar_t__ FUNC14 (TYPE_1__*,int) ; 
 scalar_t__ FUNC15 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 int FUNC17 (TYPE_1__*,scalar_t__,int*) ; 
 int FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  e6000sw_tick ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__ etherswitch_info ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC26(device_t dev)
{
	bool sgmii;
	e6000sw_softc_t *sc;
	phandle_t child, ports;
	int err, port;
	uint32_t reg;

	err = 0;
	sc = FUNC9(dev);

	/*
	 * According to the Linux source code, all of the Switch IDs we support
	 * are multi_chip capable, and should go into multi-chip mode if the
	 * sw_addr != 0.
	 */
	if (FUNC3(sc))
		FUNC10(dev, "multi-chip addressing mode (%#x)\n",
		    sc->sw_addr);
	else
		FUNC10(dev, "single-chip addressing mode\n");

	FUNC25(&sc->sx, "e6000sw");

	FUNC0(sc);
	FUNC21(dev, sc);

	ports = FUNC24(sc->node, "ports");

	if (ports == 0) {
		FUNC10(dev, "failed to parse DTS: no ports found for "
		    "switch\n");
		return (ENXIO);
	}

	for (child = FUNC4(ports); child != 0; child = FUNC5(child)) {
		err = FUNC17(sc, child, &port);
		if (err != 0) {
			FUNC10(sc->dev, "failed to parse DTS\n");
			goto out_fail;
		}

		/* Port is in use. */
		sc->ports_mask |= (1 << port);

		err = FUNC13(sc, port);
		if (err != 0) {
			FUNC10(sc->dev, "failed to init interface\n");
			goto out_fail;
		}

		if (FUNC15(sc, port)) {
			/* Link must be down to change speed force value. */
			reg = FUNC18(sc, FUNC6(sc, port),
			    PSC_CONTROL);
			reg &= ~PSC_CONTROL_LINK_UP;
			reg |= PSC_CONTROL_FORCED_LINK;
			FUNC22(sc, FUNC6(sc, port), PSC_CONTROL,
			    reg);

			/*
			 * Force speed, full-duplex, EEE off and flow-control
			 * on.
			 */
			reg &= ~(PSC_CONTROL_SPD2500 | PSC_CONTROL_ALT_SPD |
			    PSC_CONTROL_FORCED_FC | PSC_CONTROL_FC_ON |
			    PSC_CONTROL_FORCED_EEE);
			if (FUNC14(sc, port))
				reg |= PSC_CONTROL_SPD2500;
			else
				reg |= PSC_CONTROL_SPD1000;
			if (FUNC2(sc, MV88E6190) &&
			    FUNC14(sc, port))
				reg |= PSC_CONTROL_ALT_SPD;
			reg |= PSC_CONTROL_FORCED_DPX | PSC_CONTROL_FULLDPX |
			    PSC_CONTROL_FORCED_LINK | PSC_CONTROL_LINK_UP |
			    PSC_CONTROL_FORCED_SPD;
			if (!FUNC2(sc, MV88E6190))
				reg |= PSC_CONTROL_FORCED_FC | PSC_CONTROL_FC_ON;
			if (FUNC2(sc, MV88E6141) ||
			    FUNC2(sc, MV88E6341) ||
			    FUNC2(sc, MV88E6190))
				reg |= PSC_CONTROL_FORCED_EEE;
			FUNC22(sc, FUNC6(sc, port), PSC_CONTROL,
			    reg);
			/* Power on the SERDES interfaces. */
			if (FUNC2(sc, MV88E6190) &&
			    (port == 9 || port == 10)) {
				if (FUNC14(sc, port))
					sgmii = false;
				else
					sgmii = true;
				FUNC19(sc->dev, port, sgmii);
			}
		}

		/* Don't attach miibus at CPU/fixed ports */
		if (!FUNC16(sc, port))
			continue;

		err = FUNC11(sc, port);
		if (err != 0) {
			FUNC10(sc->dev, "failed to attach miibus\n");
			goto out_fail;
		}
	}

	etherswitch_info.es_nports = sc->num_ports;

	/* Default to port vlan. */
	FUNC20(sc, ETHERSWITCH_VLAN_PORT);

	reg = FUNC18(sc, REG_GLOBAL, SWITCH_GLOBAL_STATUS);
	if (reg & SWITCH_GLOBAL_STATUS_IR)
		FUNC10(dev, "switch is ready.\n");
	FUNC1(sc);

	FUNC8(dev);
	FUNC7(dev);

	FUNC23(e6000sw_tick, sc, &sc->kproc, 0, 0, "e6000sw tick kproc");

	return (0);

out_fail:
	FUNC1(sc);
	FUNC12(dev);

	return (err);
}