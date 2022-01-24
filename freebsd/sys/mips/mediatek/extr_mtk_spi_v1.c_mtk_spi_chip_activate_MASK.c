#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mtk_spi_softc {TYPE_1__* gpio_cs; } ;
struct TYPE_2__ {int /*<<< orphan*/  pin; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HIZSMOSI ; 
 int /*<<< orphan*/  MTK_SPICTL ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_spi_softc*) ; 

__attribute__((used)) static void
FUNC3(struct mtk_spi_softc *sc)
{
        FUNC2(sc);
	/*
	 * Put all CSx to low
	 */
	if (sc->gpio_cs != NULL) {
		FUNC0(sc->gpio_cs->dev, sc->gpio_cs->pin, 0);
		FUNC1(sc, MTK_SPICTL, HIZSMOSI);
	} else {
		FUNC1(sc, MTK_SPICTL, CS_HIGH | HIZSMOSI);
	}
}