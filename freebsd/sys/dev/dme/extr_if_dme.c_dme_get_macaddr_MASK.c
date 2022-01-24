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
struct dme_softc {int /*<<< orphan*/ * dme_macaddr; int /*<<< orphan*/  dme_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETHER_ADDR_LEN ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dme_softc*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,int) ; 

__attribute__((used)) static void
FUNC8(struct dme_softc *sc)
{
	char devid_str[32];
	char *var;
	int i;

	/* Cannot use resource_string_value with static hints mode */
	FUNC7(devid_str, 32, "hint.%s.%d.macaddr",
	    FUNC1(sc->dme_dev),
	    FUNC2(sc->dme_dev));

	/* Try resource hints */
	if ((var = FUNC6(devid_str)) != NULL) {
		if (!FUNC4(var, sc->dme_macaddr)) {
			FUNC3(sc->dme_dev, "MAC address: %s (hints)\n", var);
			return;
		}
	}

	/*
	 * Try to read MAC address from the device, in case U-Boot has
	 * pre-programmed one for us.
	 */
	for (i = 0; i < ETHER_ADDR_LEN; i++)
		sc->dme_macaddr[i] = FUNC5(sc, FUNC0(i));

	FUNC3(sc->dme_dev, "MAC address %6D (existing)\n",
	    sc->dme_macaddr, ":");
}