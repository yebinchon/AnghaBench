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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct chipc_spi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHIPC_SPI_FLASHCTL ; 
 int CHIPC_SPI_FLASHCTL_CSACTIVE ; 
 int CHIPC_SPI_FLASHCTL_START ; 
 int /*<<< orphan*/  CHIPC_SPI_FLASHDATA ; 
 int /*<<< orphan*/  FUNC0 (struct chipc_spi_softc*) ; 
 int FUNC1 (struct chipc_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct chipc_spi_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct chipc_spi_softc*) ; 

__attribute__((used)) static int
FUNC4(struct chipc_spi_softc *sc, uint8_t out, uint8_t* in)
{
	uint32_t ctl;

	ctl = CHIPC_SPI_FLASHCTL_START | CHIPC_SPI_FLASHCTL_CSACTIVE | out;
	FUNC0(sc);
	FUNC2(sc, CHIPC_SPI_FLASHCTL, ctl);
	FUNC0(sc);

	if (FUNC3(sc))
		return (-1);

	*in = FUNC1(sc, CHIPC_SPI_FLASHDATA) & 0xff;
	return (0);
}