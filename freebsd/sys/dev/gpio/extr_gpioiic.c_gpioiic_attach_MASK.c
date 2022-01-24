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
struct gpioiic_softc {int scl_pin; int sda_pin; int /*<<< orphan*/  sc_busdev; int /*<<< orphan*/  sc_dev; } ;
struct gpiobus_ivar {int /*<<< orphan*/ * pins; } ;
typedef  int /*<<< orphan*/  pin ;
typedef  int phandle_t ;
typedef  scalar_t__ pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 struct gpiobus_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 void* GPIOIIC_SCL_DFLT ; 
 void* GPIOIIC_SDA_DFLT ; 
 scalar_t__ FUNC1 (int,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct gpioiic_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	device_t		bitbang;
#ifdef FDT
	phandle_t		node;
	pcell_t			pin;
#endif
	struct gpiobus_ivar	*devi;
	struct gpioiic_softc	*sc;

	sc = FUNC5(dev);
	sc->sc_dev = dev;
	sc->sc_busdev = FUNC4(dev);
	if (FUNC10(FUNC3(dev),
		FUNC6(dev), "scl", &sc->scl_pin))
		sc->scl_pin = GPIOIIC_SCL_DFLT;
	if (FUNC10(FUNC3(dev),
		FUNC6(dev), "sda", &sc->sda_pin))
		sc->sda_pin = GPIOIIC_SDA_DFLT;

#ifdef FDT
	if ((node = ofw_bus_get_node(dev)) == -1)
		return (ENXIO);
	if (OF_getencprop(node, "scl", &pin, sizeof(pin)) > 0)
		sc->scl_pin = (int)pin;
	if (OF_getencprop(node, "sda", &pin, sizeof(pin)) > 0)
		sc->sda_pin = (int)pin;
#endif

	if (sc->scl_pin < 0 || sc->scl_pin > 1)
		sc->scl_pin = GPIOIIC_SCL_DFLT;
	if (sc->sda_pin < 0 || sc->sda_pin > 1)
		sc->sda_pin = GPIOIIC_SDA_DFLT;

	devi = FUNC0(dev);
	FUNC7(dev, "SCL pin: %d, SDA pin: %d\n",
	    devi->pins[sc->scl_pin], devi->pins[sc->sda_pin]);

	/* add generic bit-banging code */
	bitbang = FUNC2(dev, "iicbb", -1);
	FUNC8(bitbang);

	return (0);
}