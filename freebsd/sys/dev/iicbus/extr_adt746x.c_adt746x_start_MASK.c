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
typedef  int uint8_t ;
struct adt746x_softc {int device_id; int /*<<< orphan*/  enum_hook; int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ ADT7460_DEV_ID ; 
 int /*<<< orphan*/  ADT746X_COMPANY_ID ; 
 int /*<<< orphan*/  ADT746X_CONFIG ; 
 int /*<<< orphan*/  ADT746X_DEVICE_ID ; 
 int /*<<< orphan*/  ADT746X_REV_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct adt746x_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 

__attribute__((used)) static void
FUNC7(void *xdev)
{
	uint8_t did, cid, rev, conf;

	struct adt746x_softc *sc;

	device_t dev = (device_t)xdev;

	sc = FUNC5(dev);

	FUNC2(sc->sc_dev, sc->sc_addr, ADT746X_DEVICE_ID, &did);
	FUNC2(sc->sc_dev, sc->sc_addr, ADT746X_COMPANY_ID, &cid);
	FUNC2(sc->sc_dev, sc->sc_addr, ADT746X_REV_ID, &rev);
	FUNC2(sc->sc_dev, sc->sc_addr, ADT746X_CONFIG, &conf);

	FUNC6(dev, "Dev ID %#x, Company ID %#x, Rev ID %#x CNF: %#x\n",
		      did, cid, rev, conf);

	/* We can get the device id either from 'of' properties or from the chip
	   itself. This method makes sure we can read the chip, otherwise
	   we return.  */

	sc->device_id = did;

	conf = 1;
	/* Start the ADT7460.  */
	if (sc->device_id == ADT7460_DEV_ID)
		FUNC3(sc->sc_dev, sc->sc_addr, ADT746X_CONFIG, &conf);

	/* Detect and attach child devices.  */
	FUNC0(dev);
	FUNC1(dev);
	FUNC4(&sc->enum_hook);
}