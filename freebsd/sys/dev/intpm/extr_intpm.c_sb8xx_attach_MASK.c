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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct resource {int dummy; } ;
struct intsmb_softc {int io_rid; int poll; int /*<<< orphan*/ * io_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ AMDCZ49_SMBUS_REVID ; 
 scalar_t__ AMDCZ_SMBUS_DEVID ; 
 scalar_t__ AMDFCH41_PM_DECODE_EN0 ; 
 scalar_t__ AMDFCH41_PM_DECODE_EN1 ; 
 int AMDFCH41_SMBUS_EN ; 
 scalar_t__ AMDFCH41_SMBUS_REVID ; 
 scalar_t__ AMDFCH_SMBUS_DEVID ; 
 scalar_t__ AMDSB8_PM_SMBUS_EN ; 
 int AMDSB8_SMBUS_ADDR_MASK ; 
 int AMDSB8_SMBUS_EN ; 
 int AMDSB_PMIO_INDEX ; 
 int const AMDSB_PMIO_WIDTH ; 
 scalar_t__ AMDSB_SMBUS_DEVID ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int FUNC0 (struct resource*,scalar_t__) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int const) ; 
 struct intsmb_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	static const int	AMDSB_SMBIO_WIDTH = 0x10;
	struct intsmb_softc	*sc;
	struct resource		*res;
	uint32_t		devid;
	uint8_t			revid;
	uint16_t		addr;
	int			rid;
	int			rc;
	bool			enabled;

	sc = FUNC5(dev);
	rid = 0;
	rc = FUNC4(dev, SYS_RES_IOPORT, rid, AMDSB_PMIO_INDEX,
	    AMDSB_PMIO_WIDTH);
	if (rc != 0) {
		FUNC6(dev, "bus_set_resource for PM IO failed\n");
		return (ENXIO);
	}
	res = FUNC1(dev, SYS_RES_IOPORT, &rid,
	    RF_ACTIVE);
	if (res == NULL) {
		FUNC6(dev, "bus_alloc_resource for PM IO failed\n");
		return (ENXIO);
	}

	devid = FUNC7(dev);
	revid = FUNC8(dev);
	if (devid == AMDSB_SMBUS_DEVID ||
	    (devid == AMDFCH_SMBUS_DEVID && revid < AMDFCH41_SMBUS_REVID) ||
	    (devid == AMDCZ_SMBUS_DEVID  && revid < AMDCZ49_SMBUS_REVID)) {
		addr = FUNC0(res, AMDSB8_PM_SMBUS_EN + 1);
		addr <<= 8;
		addr |= FUNC0(res, AMDSB8_PM_SMBUS_EN);
		enabled = (addr & AMDSB8_SMBUS_EN) != 0;
		addr &= AMDSB8_SMBUS_ADDR_MASK;
	} else {
		addr = FUNC0(res, AMDFCH41_PM_DECODE_EN0);
		enabled = (addr & AMDFCH41_SMBUS_EN) != 0;
		addr = FUNC0(res, AMDFCH41_PM_DECODE_EN1);
		addr <<= 8;
	}

	FUNC3(dev, SYS_RES_IOPORT, rid, res);
	FUNC2(dev, SYS_RES_IOPORT, rid);

	if (!enabled) {
		FUNC6(dev, "SB8xx/SB9xx/FCH SMBus not enabled\n");
		return (ENXIO);
	}

	sc->io_rid = 0;
	rc = FUNC4(dev, SYS_RES_IOPORT, sc->io_rid, addr,
	    AMDSB_SMBIO_WIDTH);
	if (rc != 0) {
		FUNC6(dev, "bus_set_resource for SMBus IO failed\n");
		return (ENXIO);
	}
	sc->io_res = FUNC1(dev, SYS_RES_IOPORT, &sc->io_rid,
	    RF_ACTIVE);
	if (sc->io_res == NULL) {
		FUNC6(dev, "Could not allocate I/O space\n");
		return (ENXIO);
	}
	sc->poll = 1;
	return (0);
}