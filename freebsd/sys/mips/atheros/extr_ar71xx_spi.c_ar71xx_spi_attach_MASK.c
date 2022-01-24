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
struct ar71xx_spi_softc {int /*<<< orphan*/  sc_reg_ctrl; int /*<<< orphan*/  sc_mem_res; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_SPI_CTRL ; 
 int /*<<< orphan*/  AR71XX_SPI_FS ; 
 int /*<<< orphan*/  AR71XX_SPI_IO_CTRL ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct ar71xx_spi_softc*) ; 
 int SPI_IO_CTRL_CSMASK ; 
 int /*<<< orphan*/  FUNC1 (struct ar71xx_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ar71xx_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct ar71xx_spi_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct ar71xx_spi_softc *sc = FUNC6(dev);
	int rid;

	sc->sc_dev = dev;
        rid = 0;
	sc->sc_mem_res = FUNC3(dev, SYS_RES_MEMORY, &rid, 
	    RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC7(dev, "Could not map memory\n");
		return (ENXIO);
	}

	FUNC2(sc, AR71XX_SPI_FS, 1);

	/* Flush out read before reading the control register */
	FUNC0(sc);

	sc->sc_reg_ctrl  = FUNC1(sc, AR71XX_SPI_CTRL);

	/*
	 * XXX TODO: document what the SPI control register does.
	 */
	FUNC2(sc, AR71XX_SPI_CTRL, 0x43);

	/*
	 * Ensure the config register write has gone out before configuring
	 * the chip select mask.
	 */
	FUNC0(sc);
	FUNC2(sc, AR71XX_SPI_IO_CTRL, SPI_IO_CTRL_CSMASK);

	/*
	 * .. and ensure the write has gone out before continuing.
	 */
	FUNC0(sc);

	FUNC5(dev, "spibus", -1);
	return (FUNC4(dev));
}