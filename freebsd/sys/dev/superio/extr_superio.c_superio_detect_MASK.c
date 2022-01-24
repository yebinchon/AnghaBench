#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct siosc {scalar_t__ vendor; int io_rid; int devid; int revid; int ldn_reg; int enable_reg; int current_ldn; scalar_t__ io_port; struct resource* io_res; int /*<<< orphan*/  known_devices; TYPE_2__* methods; } ;
struct resource {int dummy; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  descr ;
struct TYPE_4__ {scalar_t__ vendor; int /*<<< orphan*/  (* exit ) (struct resource*,scalar_t__) ;int /*<<< orphan*/  (* enter ) (struct resource*,scalar_t__) ;} ;
struct TYPE_3__ {scalar_t__ vendor; int mask; int devid; int /*<<< orphan*/ * descr; int /*<<< orphan*/  devices; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ NUMPORTS ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 scalar_t__ SUPERIO_VENDOR_ITE ; 
 scalar_t__ SUPERIO_VENDOR_NUVOTON ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 scalar_t__ UINT16_MAX ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__** methods_table ; 
 int FUNC7 (struct resource*,int) ; 
 int FUNC8 (struct resource*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*,scalar_t__) ; 
 TYPE_1__* superio_table ; 

__attribute__((used)) static int
FUNC12(device_t dev, bool claim, struct siosc *sc)
{
	struct resource *res;
	rman_res_t port;
	rman_res_t count;
	uint16_t devid;
	uint8_t revid;
	int error;
	int rid;
	int i, m;

	error = FUNC2(dev, SYS_RES_IOPORT, 0, &port, &count);
	if (error != 0)
		return (error);
	if (port > UINT16_MAX || count < NUMPORTS) {
		FUNC4(dev, "unexpected I/O range size\n");
		return (ENXIO);
	}

	/*
	 * Make a temporary resource reservation for hardware probing.
	 * If we can't get the resources we need then
	 * we need to abort.  Possibly this indicates
	 * the resources were used by another device
	 * in which case the probe would have failed anyhow.
	 */
	rid = 0;
	res = FUNC1(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);
	if (res == NULL) {
		if (claim)
			FUNC4(dev, "failed to allocate I/O resource\n");
		return (ENXIO);
	}

	for (m = 0; methods_table[m] != NULL; m++) {
		methods_table[m]->enter(res, port);
		if (methods_table[m]->vendor == SUPERIO_VENDOR_ITE) {
			devid = FUNC8(res, 0x20);
			revid = FUNC7(res, 0x22);
		} else if (methods_table[m]->vendor == SUPERIO_VENDOR_NUVOTON) {
			devid = FUNC7(res, 0x20);
			revid = FUNC7(res, 0x21);
			devid = (devid << 8) | revid;
		} else {
			continue;
		}
		methods_table[m]->exit(res, port);
		for (i = 0; superio_table[i].vendor != 0; i++) {
			uint16_t mask;

			mask = superio_table[i].mask;
			if (superio_table[i].vendor !=
			    methods_table[m]->vendor)
				continue;
			if ((superio_table[i].devid & ~mask) != (devid & ~mask))
				continue;
			break;
		}

		/* Found a matching SuperIO entry. */
		if (superio_table[i].vendor != 0)
			break;
	}

	if (methods_table[m] == NULL)
		error = ENXIO;
	else
		error = 0;
	if (!claim || error != 0) {
		FUNC3(dev, SYS_RES_IOPORT, rid, res);
		return (error);
	}

	sc->methods = methods_table[m];
	sc->vendor = sc->methods->vendor;
	sc->known_devices = superio_table[i].devices;
	sc->io_res = res;
	sc->io_rid = rid;
	sc->io_port = port;
	sc->devid = devid;
	sc->revid = revid;

	FUNC0(sc->vendor == SUPERIO_VENDOR_ITE ||
	    sc->vendor == SUPERIO_VENDOR_NUVOTON,
	    ("Only ITE and Nuvoton SuperIO-s are supported"));
	sc->ldn_reg = 0x07;
	sc->enable_reg = 0x30;
	sc->current_ldn = 0xff;	/* no device should have this */

	if (superio_table[i].descr != NULL) {
		FUNC5(dev, superio_table[i].descr);
	} else if (sc->vendor == SUPERIO_VENDOR_ITE) {
		char descr[64];

		FUNC9(descr, sizeof(descr),
		    "ITE IT%4x SuperIO (revision 0x%02x)",
		    sc->devid, sc->revid);
		FUNC6(dev, descr);
	}
	return (0);
}