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
struct gpiobus_softc {int /*<<< orphan*/  sc_busdev; int /*<<< orphan*/  sc_dev; } ;
struct gpiobus_pin {int /*<<< orphan*/  pin; int /*<<< orphan*/  flags; int /*<<< orphan*/ * dev; } ;
typedef  scalar_t__ phandle_t ;
typedef  scalar_t__ pcell_t ;
typedef  int /*<<< orphan*/  gpiocells ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,char*,int*,int) ; 
 int FUNC3 (scalar_t__,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct gpiobus_softc* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct gpiobus_pin*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gpiobus_pin* FUNC13 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(device_t consumer, phandle_t cnode, char *pname,
	struct gpiobus_softc *bussc, struct gpiobus_pin **pins)
{
	int gpiocells, i, j, ncells, npins;
	pcell_t *gpios;
	phandle_t gpio;

	ncells = FUNC3(cnode, pname, sizeof(*gpios),
            (void **)&gpios);
	if (ncells == -1) {
		FUNC9(consumer,
		    "Warning: No %s specified in fdt data; "
		    "device may not function.\n", pname);
		return (-1);
	}
	/*
	 * The gpio-specifier is controller independent, the first pcell has
	 * the reference to the GPIO controller phandler.
	 * Count the number of encoded gpio-specifiers on the first pass.
	 */
	i = 0;
	npins = 0;
	while (i < ncells) {
		/* Allow NULL specifiers. */
		if (gpios[i] == 0) {
			npins++;
			i++;
			continue;
		}
		gpio = FUNC5(gpios[i]);
		/* If we have bussc, ignore devices from other gpios. */
		if (bussc != NULL)
			if (FUNC14(bussc->sc_dev) != gpio)
				return (0);
		/*
		 * Check for gpio-controller property and read the #gpio-cells
		 * for this GPIO controller.
		 */
		if (!FUNC4(gpio, "gpio-controller") ||
		    FUNC2(gpio, "#gpio-cells", &gpiocells,
		    sizeof(gpiocells)) < 0) {
			FUNC9(consumer,
			    "gpio reference is not a gpio-controller.\n");
			FUNC6(gpios);
			return (-1);
		}
		if (ncells - i < gpiocells + 1) {
			FUNC9(consumer,
			    "%s cells doesn't match #gpio-cells.\n", pname);
			return (-1);
		}
		npins++;
		i += gpiocells + 1;
	}
	if (npins == 0 || pins == NULL) {
		if (npins == 0)
			FUNC9(consumer, "no pin specified in %s.\n",
			    pname);
		FUNC6(gpios);
		return (npins);
	}
	*pins = FUNC13(sizeof(struct gpiobus_pin) * npins, M_DEVBUF,
	    M_NOWAIT | M_ZERO);
	if (*pins == NULL) {
		FUNC6(gpios);
		return (-1);
	}
	/* Decode the gpio specifier on the second pass. */
	i = 0;
	j = 0;
	while (i < ncells) {
		/* Allow NULL specifiers. */
		if (gpios[i] == 0) {
			j++;
			i++;
			continue;
		}
		gpio = FUNC5(gpios[i]);
		/* Read gpio-cells property for this GPIO controller. */
		if (FUNC2(gpio, "#gpio-cells", &gpiocells,
		    sizeof(gpiocells)) < 0) {
			FUNC9(consumer,
			    "gpio does not have the #gpio-cells property.\n");
			goto fail;
		}
		/* Return the device reference for the GPIO controller. */
		(*pins)[j].dev = FUNC1(gpios[i]);
		if ((*pins)[j].dev == NULL) {
			FUNC9(consumer,
			    "no device registered for the gpio controller.\n");
			goto fail;
		}
		/*
		 * If the gpiobus softc is NULL we use the GPIO_GET_BUS() to
		 * retrieve it.  The GPIO_GET_BUS() method is only valid after
		 * the child is probed and attached.
		 */
		if (bussc == NULL) {
			if (FUNC0((*pins)[j].dev) == NULL) {
				FUNC9(consumer,
				    "no gpiobus reference for %s.\n",
				    FUNC7((*pins)[j].dev));
				goto fail;
			}
			bussc = FUNC8(FUNC0((*pins)[j].dev));
		}
		/* Get the GPIO pin number and flags. */
		if (FUNC11((*pins)[j].dev, cnode, gpio, gpiocells,
		    &gpios[i + 1], &(*pins)[j].pin, &(*pins)[j].flags) != 0) {
			FUNC9(consumer,
			    "cannot map the gpios specifier.\n");
			goto fail;
		}
		/* Reserve the GPIO pin. */
		if (FUNC12(bussc->sc_busdev, (*pins)[j].pin) != 0)
			goto fail;
		j++;
		i += gpiocells + 1;
	}
	FUNC6(gpios);

	return (npins);

fail:
	FUNC6(gpios);
	FUNC10(*pins, M_DEVBUF);
	return (-1);
}