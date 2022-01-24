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
struct ar71xx_gpio_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_GPIO_FUNCTION ; 
 scalar_t__ AR71XX_SOC_AR9341 ; 
 scalar_t__ AR71XX_SOC_AR9342 ; 
 scalar_t__ AR71XX_SOC_AR9344 ; 
 scalar_t__ AR71XX_SOC_QCA9533 ; 
 scalar_t__ AR71XX_SOC_QCA9533_V2 ; 
 scalar_t__ AR71XX_SOC_QCA9556 ; 
 scalar_t__ AR71XX_SOC_QCA9558 ; 
 int /*<<< orphan*/  AR934X_GPIO_REG_FUNC ; 
 int /*<<< orphan*/  FUNC0 (struct ar71xx_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ar71xx_soc ; 

__attribute__((used)) static void
FUNC1(struct ar71xx_gpio_softc *sc, uint32_t mask)
{

	/*
	 * XXX TODO: refactor this out into a per-chipset method.
	 */
	if (ar71xx_soc == AR71XX_SOC_AR9341 ||
	    ar71xx_soc == AR71XX_SOC_AR9342 ||
	    ar71xx_soc == AR71XX_SOC_AR9344 ||
	    ar71xx_soc == AR71XX_SOC_QCA9533 ||
	    ar71xx_soc == AR71XX_SOC_QCA9533_V2 ||
	    ar71xx_soc == AR71XX_SOC_QCA9556 ||
	    ar71xx_soc == AR71XX_SOC_QCA9558)
		FUNC0(sc, AR934X_GPIO_REG_FUNC, mask);
	else
		FUNC0(sc, AR71XX_GPIO_FUNCTION, mask);
}