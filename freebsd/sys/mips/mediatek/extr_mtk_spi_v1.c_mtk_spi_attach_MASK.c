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
struct mtk_spi_softc {int nonflash; TYPE_1__* gpio_cs; int /*<<< orphan*/  sc_mem_res; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  pin; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct mtk_spi_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (struct mtk_spi_softc*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,TYPE_1__**) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct mtk_spi_softc *sc = FUNC6(dev);
	int rid;

	sc->sc_dev = dev;
        rid = 0;
	sc->sc_mem_res = FUNC2(dev, SYS_RES_MEMORY, &rid,
	    RF_SHAREABLE | RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC7(dev, "Could not map memory\n");
		return (ENXIO);
	}

	if (FUNC8(sc)) {
		FUNC4(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		return (EBUSY);
	}

	if (FUNC9(dev, "non-flash"))
		sc->nonflash = 1;
	else
		sc->nonflash = 0;

	FUNC10(dev, "cs-gpios", &sc->gpio_cs);

	if (sc->gpio_cs != NULL) {
		FUNC1(sc->gpio_cs->dev, sc->gpio_cs->pin,
		    GPIO_PIN_OUTPUT);
		FUNC0(sc->gpio_cs->dev, sc->gpio_cs->pin, 1);
	}

	FUNC5(dev, "spibus", -1);
	return (FUNC3(dev));
}