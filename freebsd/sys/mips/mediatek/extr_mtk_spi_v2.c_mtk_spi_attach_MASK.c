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
typedef  int uint32_t ;
struct mtk_spi_softc {int /*<<< orphan*/  sc_mem_res; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTK_SPIMASTER ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int FUNC0 (struct mtk_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct mtk_spi_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (struct mtk_spi_softc*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct mtk_spi_softc *sc = FUNC6(dev);
	uint32_t val;
	int rid;

	sc->sc_dev = dev;
        rid = 0;
	sc->sc_mem_res = FUNC2(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC7(dev, "Could not map memory\n");
		return (ENXIO);
	}

	if (FUNC8(sc)) {
		FUNC4(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		return (EBUSY);
	}

	val = FUNC0(sc, MTK_SPIMASTER);
	val &= ~(0xfff << 16);
	val |= 13 << 16;
	val |= 7 << 29;
	val |= 1 << 2;
	FUNC1(sc, MTK_SPIMASTER, val);
	    /*
	     * W25Q64CV max 104MHz, bus 120-192 MHz, so divide by 2.
	     * Update: divide by 4, DEV2 to fast for flash.
	     */

	FUNC5(dev, "spibus", 0);
	return (FUNC3(dev));
}