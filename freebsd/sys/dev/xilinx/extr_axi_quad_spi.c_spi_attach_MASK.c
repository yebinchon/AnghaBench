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
struct spi_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CR_MASTER ; 
 int CR_MSS ; 
 int CR_RST_RX ; 
 int CR_RST_TX ; 
 int CR_SPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  SPI_CR ; 
 int /*<<< orphan*/  SPI_DGIER ; 
 int /*<<< orphan*/  SPI_SRR ; 
 int SRR_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct spi_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct spi_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spi_spec ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct spi_softc *sc;
	uint32_t reg;

	sc = FUNC5(dev);

	if (FUNC2(dev, spi_spec, sc->res)) {
		FUNC6(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC8(sc->res[0]);
	sc->bsh = FUNC7(sc->res[0]);

	/* Reset */
	FUNC1(sc, SPI_SRR, SRR_RESET);

	FUNC0(1000);

	reg = (CR_MASTER | CR_MSS | CR_RST_RX | CR_RST_TX);
	FUNC1(sc, SPI_CR, reg);
	FUNC1(sc, SPI_DGIER, 0);	/* Disable interrupts */

	reg = (CR_MASTER | CR_MSS | CR_SPE);
	FUNC1(sc, SPI_CR, reg);

	FUNC4(dev, "spibus", 0);
	return (FUNC3(dev));
}