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
struct gpiobus_ivar {int npins; int /*<<< orphan*/  rl; int /*<<< orphan*/ * pins; } ;
struct ofw_gpiobus_devinfo {struct gpiobus_ivar opd_dinfo; int /*<<< orphan*/  pin; int /*<<< orphan*/  opd_obdinfo; } ;
struct gpiobus_softc {int dummy; } ;
struct gpiobus_pin {struct gpiobus_ivar opd_dinfo; int /*<<< orphan*/  pin; int /*<<< orphan*/  opd_obdinfo; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 struct gpiobus_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ofw_gpiobus_devinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct ofw_gpiobus_devinfo*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct gpiobus_ivar*) ; 
 struct ofw_gpiobus_devinfo* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct ofw_gpiobus_devinfo*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct gpiobus_softc*,struct ofw_gpiobus_devinfo**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ofw_gpiobus_devinfo *
FUNC11(device_t bus, device_t child, phandle_t node)
{
	int i, npins;
	struct gpiobus_ivar *devi;
	struct gpiobus_pin *pins;
	struct gpiobus_softc *sc;
	struct ofw_gpiobus_devinfo *dinfo;

	sc = FUNC0(bus);
	dinfo = FUNC4(sizeof(*dinfo), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (dinfo == NULL)
		return (NULL);
	if (FUNC6(&dinfo->opd_obdinfo, node) != 0) {
		FUNC2(dinfo, M_DEVBUF);
		return (NULL);
	}
	/* Parse the gpios property for the child. */
	npins = FUNC9(child, node, "gpios", sc, &pins);
	if (npins <= 0) {
		FUNC5(&dinfo->opd_obdinfo);
		FUNC2(dinfo, M_DEVBUF);
		return (NULL);
	}
	/* Initialize the irq resource list. */
	FUNC10(&dinfo->opd_dinfo.rl);
	/* Allocate the child ivars and copy the parsed pin data. */
	devi = &dinfo->opd_dinfo;
	devi->npins = (uint32_t)npins;
	if (FUNC3(devi) != 0) {
		FUNC2(pins, M_DEVBUF);
		FUNC8(bus, dinfo);
		return (NULL);
	}
	for (i = 0; i < devi->npins; i++)
		devi->pins[i] = pins[i].pin;
	FUNC2(pins, M_DEVBUF);
	/* Parse the interrupt resources. */
	if (FUNC7(bus, node, &dinfo->opd_dinfo.rl, NULL) != 0) {
		FUNC8(bus, dinfo);
		return (NULL);
	}
	FUNC1(child, dinfo);

	return (dinfo);
}