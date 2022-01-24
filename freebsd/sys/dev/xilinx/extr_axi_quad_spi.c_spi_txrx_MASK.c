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
struct spi_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_DRR ; 
 int /*<<< orphan*/  SPI_DTR ; 
 int /*<<< orphan*/  SPI_SR ; 
 int SR_TX_EMPTY ; 
 int /*<<< orphan*/  FUNC1 (struct spi_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct spi_softc *sc, uint8_t *out_buf,
    uint8_t *in_buf, int bufsz, int cs)
{
	uint32_t data;
	uint32_t i;

	for (i = 0; i < bufsz; i++) {
		FUNC1(sc, SPI_DTR, out_buf[i]);

		while(!(FUNC0(sc, SPI_SR) & SR_TX_EMPTY))
			continue;

		data = FUNC0(sc, SPI_DRR);
		if (in_buf)
			in_buf[i] = (data & 0xff);
	}

	return (0);
}