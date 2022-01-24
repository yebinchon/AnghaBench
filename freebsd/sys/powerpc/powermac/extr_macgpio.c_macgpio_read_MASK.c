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
typedef  int /*<<< orphan*/  uint8_t ;
struct macgpio_softc {int /*<<< orphan*/  sc_gpios; } ;
struct macgpio_devinfo {scalar_t__ gpio_num; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct macgpio_devinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct macgpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 

uint8_t
FUNC4(device_t dev)
{
	struct macgpio_softc *sc;
	struct macgpio_devinfo *dinfo;

	sc = FUNC3(FUNC2(dev));
	dinfo = FUNC1(dev);

	if (dinfo->gpio_num < 0)
		return (0);

	return (FUNC0(sc->sc_gpios,dinfo->gpio_num));
}