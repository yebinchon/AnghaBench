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
struct e6060sw_softc {int sw_model; int smi_offset; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 scalar_t__ CORE_REGISTER ; 
 int E6060 ; 
 int E6063 ; 
 int E6065 ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWITCH_ID ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (struct e6060sw_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct e6060sw_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	int data;
	struct e6060sw_softc *sc;
	int devid, i;
	char *devname;
	char desc[80];

	sc = FUNC3(dev);
	FUNC1(sc, sizeof(*sc));

	devid = 0;
	for (i = 0; i < 2; ++i) {
		data = FUNC0(FUNC2(dev), 
		    CORE_REGISTER + i * 0x10, SWITCH_ID);
		if (bootverbose)
			FUNC4(dev,"Switch Identifier Register %x\n",
			    data);

		devid = data >> 4;
		if (devid == E6060 || 
		    devid == E6063 || devid == E6065) {
			sc->sw_model = devid;
			sc->smi_offset = i * 0x10;
			break;
		}
	}

	if (devid == E6060)
		devname = "88E6060";
	else if (devid == E6063)
		devname = "88E6063";
	else if (devid == E6065)
		devname = "88E6065";
	else
		return (ENXIO);

	FUNC6(desc, "Marvell %s MDIO switch driver at 0x%02x",
	    devname, sc->smi_offset);
	FUNC5(dev, desc);

	return (BUS_PROBE_DEFAULT);
}