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
typedef  size_t uint32_t ;
struct jz4780_gpio_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/ * intrhand; int /*<<< orphan*/ * busdev; TYPE_1__* pins; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  pu_pins ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pd_pins ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {size_t pin_num; int pin_caps; char* pin_name; int /*<<< orphan*/  intr_trigger; int /*<<< orphan*/  intr_polarity; } ;

/* Variables and functions */
 int ENXIO ; 
 int GPIOMAXNAME ; 
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_OUTPUT ; 
 int GPIO_PIN_PULLDOWN ; 
 int GPIO_PIN_PULLUP ; 
 int INTR_MPSAFE ; 
 int /*<<< orphan*/  INTR_POLARITY_CONFORM ; 
 int /*<<< orphan*/  INTR_TRIGGER_CONFORM ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  FUNC0 (struct jz4780_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_gpio_softc*) ; 
 size_t JZ4780_GPIO_PINS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct jz4780_gpio_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct jz4780_gpio_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jz4780_gpio_intr ; 
 int /*<<< orphan*/  FUNC14 (struct jz4780_gpio_softc*,size_t) ; 
 scalar_t__ FUNC15 (struct jz4780_gpio_softc*) ; 
 int /*<<< orphan*/  jz4780_gpio_spec ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,int,size_t) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct jz4780_gpio_softc *sc = FUNC8(dev);
	phandle_t node;
	uint32_t i, pd_pins, pu_pins;

	sc->dev = dev;

	if (FUNC4(dev, jz4780_gpio_spec, sc->res)) {
		FUNC10(dev, "could not allocate resources for device\n");
		return (ENXIO);
	}

	FUNC1(sc);

	node = FUNC16(dev);
	FUNC2(node, "ingenic,pull-ups", &pu_pins, sizeof(pu_pins));
	FUNC2(node, "ingenic,pull-downs", &pd_pins, sizeof(pd_pins));

	for (i = 0; i < JZ4780_GPIO_PINS; i++) {
		sc->pins[i].pin_num = i;
		sc->pins[i].pin_caps |= GPIO_PIN_INPUT | GPIO_PIN_OUTPUT;
		if (pu_pins & (1 << i))
			sc->pins[i].pin_caps |= GPIO_PIN_PULLUP;
		if (pd_pins & (1 << i))
			sc->pins[i].pin_caps |= GPIO_PIN_PULLDOWN;
		sc->pins[i].intr_polarity = INTR_POLARITY_CONFORM;
		sc->pins[i].intr_trigger = INTR_TRIGGER_CONFORM;

		FUNC17(sc->pins[i].pin_name, GPIOMAXNAME - 1, "gpio%c%d",
		    FUNC9(dev) + 'a', i);
		sc->pins[i].pin_name[GPIOMAXNAME - 1] = '\0';

		FUNC14(sc, i);
	}

	if (FUNC15(sc) != 0)
		goto fail;

	if (FUNC13(dev, FUNC3(node)) == NULL) {
		FUNC10(dev, "could not register PIC\n");
		goto fail;
	}

	if (FUNC6(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
	    jz4780_gpio_intr, NULL, sc, &sc->intrhand) != 0)
		goto fail_pic;

	sc->busdev = FUNC11(dev);
	if (sc->busdev == NULL)
		goto fail_pic;

	return (0);
fail_pic:
	FUNC12(dev, FUNC3(node));
fail:
	if (sc->intrhand != NULL)
		FUNC7(dev, sc->res[1], sc->intrhand);
	FUNC5(dev, jz4780_gpio_spec, sc->res);
	FUNC0(sc);
	return (ENXIO);
}