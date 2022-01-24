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
struct dwgpio_softc {int port; int gpio_npins; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * busdev; TYPE_1__* gpio_pins; int /*<<< orphan*/  dev; int /*<<< orphan*/  node; int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int gp_pin; int /*<<< orphan*/  gp_name; int /*<<< orphan*/  gp_flags; int /*<<< orphan*/  gp_caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_CAPS ; 
 int ENCODED_ID_PWIDTH_M ; 
 int FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIOMAXNAME ; 
 int /*<<< orphan*/  GPIO_CONFIG_REG2 ; 
 int /*<<< orphan*/  GPIO_PIN_INPUT ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GPIO_VER_ID_CODE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int RB_VERBOSE ; 
 int FUNC3 (struct dwgpio_softc*,int /*<<< orphan*/ ) ; 
 int boothowto ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct dwgpio_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct dwgpio_softc *sc;
	int version;
	int nr_pins;
	int cfg2;
	int i;

	sc = FUNC6(dev);
	sc->parent = FUNC5(dev);
	sc->node = FUNC12(dev);
	sc->dev = dev;
	FUNC11(&sc->sc_mtx, FUNC4(dev), NULL, MTX_DEF);

	if ((FUNC2(sc->node, "reg", &sc->port, sizeof(sc->port))) <= 0)
		return (ENXIO);

	FUNC13("port %d\n", sc->port);

	version =  FUNC3(sc, GPIO_VER_ID_CODE);
	if (boothowto & RB_VERBOSE)
		FUNC8(sc->dev, "Version = 0x%08x\n", version);

	/* Grab number of pins from hardware. */
	cfg2 = FUNC3(sc, GPIO_CONFIG_REG2);
	nr_pins = (cfg2 >> FUNC0(sc->port)) & \
			ENCODED_ID_PWIDTH_M;
	sc->gpio_npins = nr_pins + 1;

	for (i = 0; i < sc->gpio_npins; i++) {
		sc->gpio_pins[i].gp_pin = i;
		sc->gpio_pins[i].gp_caps = DEFAULT_CAPS;
		sc->gpio_pins[i].gp_flags =
		    (FUNC3(sc, FUNC1(sc->port)) & (1 << i)) ?
		    GPIO_PIN_OUTPUT: GPIO_PIN_INPUT;
		FUNC14(sc->gpio_pins[i].gp_name, GPIOMAXNAME,
		    "dwgpio%d.%d", FUNC7(dev), i);
	}
	sc->busdev = FUNC9(dev);
	if (sc->busdev == NULL) {
		FUNC10(&sc->sc_mtx);
		return (ENXIO);
	}

	return (0);
}