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
typedef  int /*<<< orphan*/  uint32_t ;
struct intelspi_softc {int dummy; } ;

/* Variables and functions */
 int CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct intelspi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTELSPI_SSPREG_SPI_CS_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct intelspi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_CS_CTRL_CS_HIGH ; 
 int /*<<< orphan*/  SPI_CS_CTRL_CS_LOW ; 
 int /*<<< orphan*/  SPI_CS_CTRL_CS_MASK ; 
 int /*<<< orphan*/  SPI_CS_CTRL_SW_MODE ; 

__attribute__((used)) static void
FUNC2(struct intelspi_softc *sc, int level)
{
	uint32_t reg;

	reg = FUNC0(sc, INTELSPI_SSPREG_SPI_CS_CTRL);
	reg &= ~(SPI_CS_CTRL_CS_MASK);
	reg |= SPI_CS_CTRL_SW_MODE;

	if (level == CS_HIGH)
		reg |= SPI_CS_CTRL_CS_HIGH;
	else
		reg |= SPI_CS_CTRL_CS_LOW;
		
	FUNC1(sc, INTELSPI_SSPREG_SPI_CS_CTRL, reg);
}