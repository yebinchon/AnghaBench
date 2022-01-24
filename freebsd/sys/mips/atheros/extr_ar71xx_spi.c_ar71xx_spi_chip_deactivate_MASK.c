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
struct ar71xx_spi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_SPI_IO_CTRL ; 
 int /*<<< orphan*/  SPI_IO_CTRL_CSMASK ; 
 int /*<<< orphan*/  FUNC0 (struct ar71xx_spi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct ar71xx_spi_softc *sc, int cs)
{
	/*
	 * Put all CSx to high
	 */
	FUNC0(sc, AR71XX_SPI_IO_CTRL, SPI_IO_CTRL_CSMASK);
}