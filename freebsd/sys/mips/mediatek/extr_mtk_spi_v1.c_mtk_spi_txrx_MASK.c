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
struct mtk_spi_softc {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MTK_SPICTL ; 
 int /*<<< orphan*/  MTK_SPIDATA ; 
 int MTK_SPI_WRITE ; 
 int FUNC0 (struct mtk_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_spi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  START_READ ; 
 int /*<<< orphan*/  START_WRITE ; 
 scalar_t__ FUNC3 (struct mtk_spi_softc*) ; 

__attribute__((used)) static uint8_t
FUNC4(struct mtk_spi_softc *sc, uint8_t *data, int write)
{

	if (FUNC3(sc))
		return (EBUSY);

	if (write == MTK_SPI_WRITE) {
		FUNC2(sc, MTK_SPIDATA, *data);
		FUNC1(sc, MTK_SPICTL, START_WRITE);
	} else {/* MTK_SPI_READ */
		FUNC1(sc, MTK_SPICTL, START_READ);
		if (FUNC3(sc))
			return (EBUSY);

		*data = FUNC0(sc, MTK_SPIDATA) & 0xff;
	}
	return (0);
}