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
struct ar71xx_spi_softc {scalar_t__ sc_mem_res; int /*<<< orphan*/  sc_reg_ctrl; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_SPI_CTRL ; 
 int /*<<< orphan*/  AR71XX_SPI_FS ; 
 int /*<<< orphan*/  FUNC0 (struct ar71xx_spi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar71xx_spi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct ar71xx_spi_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct ar71xx_spi_softc *sc = FUNC3(dev);

	/*
	 * Ensure any other writes to the device are finished
	 * before we tear down the SPI device.
	 */
	FUNC0(sc);

	/*
	 * Restore the control register; ensure it has hit the
	 * hardware before continuing.
	 */
	FUNC1(sc, AR71XX_SPI_CTRL, sc->sc_reg_ctrl);
	FUNC0(sc);

	/*
	 * And now, put the flash back into mapped IO mode and
	 * ensure _that_ has completed before we finish up.
	 */
	FUNC1(sc, AR71XX_SPI_FS, 0);
	FUNC0(sc);

	if (sc->sc_mem_res)
		FUNC2(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);

	return (0);
}