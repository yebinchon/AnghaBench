#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ phandle_t ;
struct TYPE_7__ {int swid; int sw_addr; int phy_base; int num_ports; int /*<<< orphan*/  sx; scalar_t__ node; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ e6000sw_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int ENXIO ; 
#define  MV88E6141 133 
#define  MV88E6172 132 
#define  MV88E6176 131 
#define  MV88E6190 130 
#define  MV88E6341 129 
#define  MV88E6352 128 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (scalar_t__,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWITCH_ID ; 
 scalar_t__ bootverbose ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	e6000sw_softc_t *sc;
	const char *description;
	phandle_t switch_node;

	sc = FUNC5(dev);
	switch_node = FUNC9(FUNC2("/"),
	    "marvell,mv88e6085");
	if (switch_node == 0) {
		switch_node = FUNC9(FUNC2("/"),
		    "marvell,mv88e6190");

		if (switch_node == 0)
			return (ENXIO);

		/*
		 * Trust DTS and fix the port register offset for the MV88E6190
		 * detection bellow.
		 */
		sc->swid = MV88E6190;
	}

	if (bootverbose)
		FUNC6(dev, "Found switch_node: 0x%x\n", switch_node);

	sc->dev = dev;
	sc->node = switch_node;

	if (FUNC3(sc->node, "reg", &sc->sw_addr,
	    sizeof(sc->sw_addr)) < 0)
		return (ENXIO);
	if (sc->sw_addr < 0 || sc->sw_addr > 32)
		return (ENXIO);

	/*
	 * Create temporary lock, just to satisfy assertions,
	 * when obtaining the switch ID. Destroy immediately afterwards.
	 */
	FUNC11(&sc->sx, "e6000sw_tmp");
	FUNC0(sc);
	sc->swid = FUNC8(sc, FUNC4(sc, 0), SWITCH_ID) & 0xfff0;
	FUNC1(sc);
	FUNC10(&sc->sx);

	switch (sc->swid) {
	case MV88E6141:
		description = "Marvell 88E6141";
		sc->phy_base = 0x10;
		sc->num_ports = 6;
		break;
	case MV88E6341:
		description = "Marvell 88E6341";
		sc->phy_base = 0x10;
		sc->num_ports = 6;
		break;
	case MV88E6352:
		description = "Marvell 88E6352";
		sc->num_ports = 7;
		break;
	case MV88E6172:
		description = "Marvell 88E6172";
		sc->num_ports = 7;
		break;
	case MV88E6176:
		description = "Marvell 88E6176";
		sc->num_ports = 7;
		break;
	case MV88E6190:
		description = "Marvell 88E6190";
		sc->num_ports = 11;
		break;
	default:
		FUNC6(dev, "Unrecognized device, id 0x%x.\n", sc->swid);
		return (ENXIO);
	}

	FUNC7(dev, description);

	return (BUS_PROBE_DEFAULT);
}