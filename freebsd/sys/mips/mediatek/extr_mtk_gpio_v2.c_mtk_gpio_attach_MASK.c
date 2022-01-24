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
struct mtk_gpio_softc {size_t bank_id; size_t num_pins; int /*<<< orphan*/ * res; int /*<<< orphan*/ * intrhand; int /*<<< orphan*/ * busdev; TYPE_1__* pins; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  num_pins ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bank_id ;
struct TYPE_2__ {int pin_caps; char* pin_name; int /*<<< orphan*/  intr_trigger; int /*<<< orphan*/  intr_polarity; } ;

/* Variables and functions */
 int ENXIO ; 
 int GPIOMAXNAME ; 
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_INVIN ; 
 int GPIO_PIN_INVOUT ; 
 int GPIO_PIN_OUTPUT ; 
 int INTR_MPSAFE ; 
 int /*<<< orphan*/  INTR_POLARITY_HIGH ; 
 int /*<<< orphan*/  INTR_TRIGGER_EDGE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_gpio_softc*) ; 
 size_t MTK_GPIO_PINS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,size_t*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mtk_gpio_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mtk_gpio_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtk_gpio_intr ; 
 int /*<<< orphan*/  FUNC15 (struct mtk_gpio_softc*,size_t) ; 
 int /*<<< orphan*/  mtk_gpio_spec ; 
 scalar_t__ FUNC16 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,char*,int,size_t) ; 

__attribute__((used)) static int
FUNC21(device_t dev)
{
	struct mtk_gpio_softc *sc;
	phandle_t node;
	uint32_t i, num_pins, bank_id;

	sc = FUNC9(dev);
	sc->dev = dev;

	if (FUNC5(dev, mtk_gpio_spec, sc->res)) {
		FUNC11(dev, "could not allocate resources for device\n");
		return (ENXIO);
	}

	FUNC1(sc);

	node = FUNC19(dev);

	if (FUNC3(node, "clocks"))
		FUNC18(dev);
	if (FUNC3(node, "resets"))
		FUNC17(dev);

	if (FUNC3(node, "mtk,bank-id") && (FUNC2(node,
	    "mtk,bank-id", &bank_id, sizeof(bank_id)) >= 0))
		sc->bank_id = bank_id;
	else
		sc->bank_id = FUNC10(dev);

	if (FUNC3(node, "mtk,num-pins") && (FUNC2(node,
	    "mtk,num-pins", &num_pins, sizeof(num_pins)) >= 0))
		sc->num_pins = num_pins;
	else
		sc->num_pins = MTK_GPIO_PINS;

	for (i = 0; i < sc->num_pins; i++) {
		sc->pins[i].pin_caps |= GPIO_PIN_INPUT | GPIO_PIN_OUTPUT |
		    GPIO_PIN_INVIN | GPIO_PIN_INVOUT;
		sc->pins[i].intr_polarity = INTR_POLARITY_HIGH;
		sc->pins[i].intr_trigger = INTR_TRIGGER_EDGE;

		FUNC20(sc->pins[i].pin_name, GPIOMAXNAME - 1, "gpio%c%d",
		    FUNC10(dev) + 'a', i);
		sc->pins[i].pin_name[GPIOMAXNAME - 1] = '\0';

		FUNC15(sc, i);
	}

	if (FUNC16(sc) != 0) {
		FUNC11(dev, "could not register PIC ISRCs\n");
		goto fail;
	}

	if (FUNC14(dev, FUNC4(node)) == NULL) {
		FUNC11(dev, "could not register PIC\n");
		goto fail;
	}

	if (FUNC7(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
	    mtk_gpio_intr, NULL, sc, &sc->intrhand) != 0)
		goto fail_pic;

	sc->busdev = FUNC12(dev);
	if (sc->busdev == NULL)
		goto fail_pic;

	return (0);
fail_pic:
	FUNC13(dev, FUNC4(node));
fail:
	if(sc->intrhand != NULL)
		FUNC8(dev, sc->res[1], sc->intrhand);
	FUNC6(dev, mtk_gpio_spec, sc->res);
	FUNC0(sc);
	return (ENXIO);
}