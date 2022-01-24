#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rcc_gpio_softc {int sc_gpio_npins; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/  sc_io_rid; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCC_GPIO_USE_SEL ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct rcc_gpio_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rcc_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* rcc_pins ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	int i;
	struct rcc_gpio_softc *sc;

	sc = FUNC1(dev);
	FUNC2(dev);

	/* Disable the GPIO function. */
	for (i = 0; i < sc->sc_gpio_npins; i++)
		FUNC4(sc, RCC_GPIO_USE_SEL, rcc_pins[i].pin, 0);

	if (sc->sc_io_res != NULL)
		FUNC0(dev, SYS_RES_IOPORT, sc->sc_io_rid,
		    sc->sc_io_res);
	FUNC3(&sc->sc_mtx);

	return (0);
}