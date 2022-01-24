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
struct intelspi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_DIV_10MHZ ; 
 int /*<<< orphan*/  DATA_SIZE_8BITS ; 
 int FUNC0 (struct intelspi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTELSPI_SSPREG_SPI_CS_CTRL ; 
 int /*<<< orphan*/  INTELSPI_SSPREG_SSCR0 ; 
 int /*<<< orphan*/  INTELSPI_SSPREG_SSCR1 ; 
 int /*<<< orphan*/  FUNC1 (struct intelspi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RX_FIFO_THRESHOLD ; 
 int SPI_CS_CTRL_CS_HIGH ; 
 int SPI_CS_CTRL_CS_MASK ; 
 int SPI_CS_CTRL_SW_MODE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SSCR0_FRF_SPI ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int SSCR0_SSE ; 
 int SSCR1_MODE_0 ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_FIFO_THRESHOLD ; 

__attribute__((used)) static void
FUNC6(struct intelspi_softc *sc)
{
	uint32_t reg;

	FUNC1(sc, INTELSPI_SSPREG_SSCR0, 0);

	/* Manual CS control */
	reg = FUNC0(sc, INTELSPI_SSPREG_SPI_CS_CTRL);
	reg &= ~(SPI_CS_CTRL_CS_MASK);
	reg |= (SPI_CS_CTRL_SW_MODE | SPI_CS_CTRL_CS_HIGH);
	FUNC1(sc, INTELSPI_SSPREG_SPI_CS_CTRL, reg);

	/* Set TX/RX FIFO IRQ threshold levels */
	reg = FUNC5(TX_FIFO_THRESHOLD) | FUNC4(RX_FIFO_THRESHOLD);
	/*
	 * Set SPI mode. This should be part of transaction or sysctl
	 */
	reg |= SSCR1_MODE_0;
	FUNC1(sc, INTELSPI_SSPREG_SSCR1, reg);

	/*
	 * Parent clock on Minowboard Turbot is 50MHz
	 * divide it by 5 to set to more or less reasonable
	 * value. But this should be part of transaction config
	 * or sysctl
	 */
	reg = FUNC3(CLOCK_DIV_10MHZ);
	/* Put SSP in SPI mode */
	reg |= SSCR0_FRF_SPI;
	/* Data size */
	reg |= FUNC2(DATA_SIZE_8BITS);
	/* Enable SSP */
	reg |= SSCR0_SSE;
	FUNC1(sc, INTELSPI_SSPREG_SSCR0, reg);
}