#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int dma_bits; int /*<<< orphan*/ * bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct saf1761_otg_softc {TYPE_1__ sc_bus; int /*<<< orphan*/  sc_io_size; void* sc_io_hdl; void* sc_io_tag; void* sc_io_res; int /*<<< orphan*/  sc_devices; int /*<<< orphan*/  sc_hw_mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  SOTG_HW_MODE_CTRL_DATA_BUS_WIDTH ; 
 int /*<<< orphan*/  SOTG_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ USB_PCI_MEMORY_ADDRESS ; 
 int /*<<< orphan*/  USB_PCI_MEMORY_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct saf1761_otg_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct saf1761_otg_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  saf1761_otg_filter_interrupt ; 
 int FUNC8 (struct saf1761_otg_softc*) ; 
 int /*<<< orphan*/  saf1761_otg_interrupt ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct saf1761_otg_softc *sc = FUNC2(dev);
	int err;

	/* 32-bit data bus */
	sc->sc_hw_mode |= SOTG_HW_MODE_CTRL_DATA_BUS_WIDTH;

	/* initialise some bus fields */
	sc->sc_bus.parent = dev;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = SOTG_MAX_DEVICES;
	sc->sc_bus.dma_bits = 32;

	/* get all DMA memory */
	if (FUNC9(&sc->sc_bus, FUNC0(dev), NULL))
		return (ENOMEM);

	sc->sc_io_res = (void *)1;
	sc->sc_io_tag = (void *)1;
	sc->sc_io_hdl = (void *)USB_PCI_MEMORY_ADDRESS;
	sc->sc_io_size = USB_PCI_MEMORY_SIZE;

	sc->sc_bus.bdev = FUNC1(dev, "usbus", -1);
	if (sc->sc_bus.bdev == NULL)
		goto error;

	FUNC6(sc->sc_bus.bdev, &sc->sc_bus);
	FUNC5(dev, &saf1761_otg_filter_interrupt, &saf1761_otg_interrupt, sc);

	err = FUNC8(sc);
	if (err) {
		FUNC3(dev, "Init failed\n");
		goto error;
	}
	err = FUNC4(sc->sc_bus.bdev);
	if (err) {
		FUNC3(dev, "USB probe and attach failed\n");
		goto error;
	}
	return (0);

error:
	FUNC7(dev);
	return (ENXIO);
}