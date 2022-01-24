#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct wb_softc {int /*<<< orphan*/  chip; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int device_id; char* descr; int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int BUS_PROBE_SPECIFIC ; 
 int ENXIO ; 
 scalar_t__ SUPERIO_DEV_WDT ; 
 scalar_t__ SUPERIO_VENDOR_NUVOTON ; 
 scalar_t__ bootverbose ; 
 struct wb_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* wb_devs ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	char buf[128];
	struct wb_softc *sc;
	int j;
	uint8_t devid;
	uint8_t revid;

	if (FUNC8(dev) != SUPERIO_VENDOR_NUVOTON)
		return (ENXIO);
	if (FUNC6(dev) != SUPERIO_DEV_WDT)
		return (ENXIO);

	sc = FUNC0(dev);
	devid = FUNC5(dev) >> 8;
	revid = FUNC7(dev);
	for (j = 0; j < FUNC3(wb_devs); j++) {
		if (wb_devs[j].device_id == devid) {
			sc->chip = wb_devs[j].chip;
			FUNC4(buf, sizeof(buf),
			    "%s (0x%02x/0x%02x) Watchdog Timer",
			    wb_devs[j].descr, devid, revid);
			FUNC2(dev, buf);
			return (BUS_PROBE_SPECIFIC);
		}
	}
	if (bootverbose) {
		FUNC1(dev,
		    "unrecognized chip: devid 0x%02x, revid 0x%02x\n",
		    devid, revid);
	}
	return (ENXIO);
}