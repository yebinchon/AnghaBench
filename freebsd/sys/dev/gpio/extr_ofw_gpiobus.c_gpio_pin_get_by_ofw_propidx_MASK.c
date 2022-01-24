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
struct gpiobus_pin {int /*<<< orphan*/  pin; int /*<<< orphan*/  flags; int /*<<< orphan*/ * dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  struct gpiobus_pin* gpio_pin_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct gpiobus_pin* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,char*,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ **) ; 

int
FUNC9(device_t consumer, phandle_t cnode,
    char *prop_name, int idx, gpio_pin_t *out_pin)
{
	phandle_t xref;
	pcell_t *cells;
	device_t busdev;
	struct gpiobus_pin pin;
	int ncells, rv;

	FUNC1(consumer != NULL && cnode > 0,
	    ("both consumer and cnode required"));

	rv = FUNC8(cnode, prop_name, "#gpio-cells",
	    idx, &xref, &ncells, &cells);
	if (rv != 0)
		return (rv);

	/* Translate provider to device. */
	pin.dev = FUNC2(xref);
	if (pin.dev == NULL) {
		FUNC4(cells);
		return (ENODEV);
	}

	/* Test if GPIO bus already exist. */
	busdev = FUNC0(pin.dev);
	if (busdev == NULL) {
		FUNC4(cells);
		return (ENODEV);
	}

	/* Map GPIO pin. */
	rv = FUNC5(pin.dev, cnode, FUNC3(xref), ncells,
	    cells, &pin.pin, &pin.flags);
	FUNC4(cells);
	if (rv != 0)
		return (ENXIO);

	/* Reserve GPIO pin. */
	rv = FUNC6(busdev, pin.pin);
	if (rv != 0)
		return (EBUSY);

	*out_pin = FUNC7(sizeof(struct gpiobus_pin), M_DEVBUF,
	    M_WAITOK | M_ZERO);
	**out_pin = pin;
	return (0);
}