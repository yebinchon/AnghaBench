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
struct arswitch_softc {int page; int is_internal_switch; int chip_rev; int chip_ver; int mii_lo_first; int /*<<< orphan*/  sc_switchtype; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  desc ;

/* Variables and functions */
 int AR8X16_MASK_CTRL_REV_MASK ; 
 int AR8X16_MASK_CTRL_VER_MASK ; 
 int AR8X16_MASK_CTRL_VER_SHIFT ; 
 int /*<<< orphan*/  AR8X16_REG_MASK_CTRL ; 
 int /*<<< orphan*/  AR8X16_SWITCH_AR7240 ; 
 int /*<<< orphan*/  AR8X16_SWITCH_AR8216 ; 
 int /*<<< orphan*/  AR8X16_SWITCH_AR8226 ; 
 int /*<<< orphan*/  AR8X16_SWITCH_AR8316 ; 
 int /*<<< orphan*/  AR8X16_SWITCH_AR8327 ; 
 int /*<<< orphan*/  AR8X16_SWITCH_AR9340 ; 
 int /*<<< orphan*/  ARSWITCH_DBG_ANY ; 
 int BUS_PROBE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct arswitch_softc*,int /*<<< orphan*/ ,char*,char*,int) ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct arswitch_softc*,int) ; 
 struct arswitch_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,int,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct arswitch_softc *sc;
	uint32_t id;
	char *chipname, desc[256];

	sc = FUNC5(dev);
	FUNC4(sc, sizeof(*sc));
	sc->page = -1;

	/* AR7240 probe */
	if (FUNC1(dev) == 0) {
		chipname = "AR7240";
		sc->sc_switchtype = AR8X16_SWITCH_AR7240;
		sc->is_internal_switch = 1;
		id = 0;
		goto done;
	}

	/* AR9340 probe */
	if (FUNC2(dev) == 0) {
		chipname = "AR9340";
		sc->sc_switchtype = AR8X16_SWITCH_AR9340;
		sc->is_internal_switch = 1;
		id = 0;
		goto done;
	}

	/* AR8xxx probe */
	id = FUNC3(dev, AR8X16_REG_MASK_CTRL);
	sc->chip_rev = (id & AR8X16_MASK_CTRL_REV_MASK);
	sc->chip_ver = (id & AR8X16_MASK_CTRL_VER_MASK) > AR8X16_MASK_CTRL_VER_SHIFT;
	switch (id & (AR8X16_MASK_CTRL_VER_MASK | AR8X16_MASK_CTRL_REV_MASK)) {
	case 0x0101:
		chipname = "AR8216";
		sc->sc_switchtype = AR8X16_SWITCH_AR8216;
		break;
	case 0x0201:
		chipname = "AR8226";
		sc->sc_switchtype = AR8X16_SWITCH_AR8226;
		break;
	/* 0x0301 - AR8236 */
	case 0x1000:
	case 0x1001:
		chipname = "AR8316";
		sc->sc_switchtype = AR8X16_SWITCH_AR8316;
		break;
	case 0x1202:
	case 0x1204:
		chipname = "AR8327";
		sc->sc_switchtype = AR8X16_SWITCH_AR8327;
		sc->mii_lo_first = 1;
		break;
	default:
		chipname = NULL;
	}

done:

	FUNC0(sc, ARSWITCH_DBG_ANY, "chipname=%s, id=%08x\n", chipname, id);
	if (chipname != NULL) {
		FUNC7(desc, sizeof(desc),
		    "Atheros %s Ethernet Switch (ver %d rev %d)",
		    chipname,
		    sc->chip_ver,
		    sc->chip_rev);
		FUNC6(dev, desc);
		return (BUS_PROBE_DEFAULT);
	}
	return (ENXIO);
}