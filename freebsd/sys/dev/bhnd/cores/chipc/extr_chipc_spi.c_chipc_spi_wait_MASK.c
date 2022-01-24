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
struct chipc_spi_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  CHIPC_SPI_FLASHCTL ; 
 int CHIPC_SPI_FLASHCTL_START ; 
 int /*<<< orphan*/  CHIPC_SPI_FLASHDATA ; 
 int CHIPC_SPI_MAXTRIES ; 
 int FUNC1 (struct chipc_spi_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct chipc_spi_softc *sc)
{
	int i;

	for (i = CHIPC_SPI_MAXTRIES; i > 0; i--)
		if (!(FUNC1(sc, CHIPC_SPI_FLASHCTL) & CHIPC_SPI_FLASHCTL_START))
			break;

	if (i > 0)
		return (0);

	FUNC0(sc->sc_dev, "busy: CTL=0x%x DATA=0x%x",
	    FUNC1(sc, CHIPC_SPI_FLASHCTL),
	    FUNC1(sc, CHIPC_SPI_FLASHDATA));
	return (-1);
}