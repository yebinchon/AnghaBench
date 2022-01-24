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
struct ar71xx_gpio_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_GPIO_OE ; 
 int /*<<< orphan*/  FUNC0 (struct ar71xx_gpio_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ar71xx_gpio_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static void
FUNC3(struct ar71xx_gpio_softc *sc, int b)
{
	uint32_t mask;

	mask = 1 << b;

	if (FUNC2())
		FUNC0(sc, AR71XX_GPIO_OE, mask);
	else
		FUNC1(sc, AR71XX_GPIO_OE, mask);
}