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
struct glxiic_softc {int /*<<< orphan*/  gpio_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLXIIC_GPIOL_IN_AUX1_SEL ; 
 int /*<<< orphan*/  GLXIIC_GPIOL_OUT_AUX1_SEL ; 
 int /*<<< orphan*/  GLXIIC_GPIO_14_15_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct glxiic_softc *sc)
{

	FUNC0(sc->gpio_res, GLXIIC_GPIOL_OUT_AUX1_SEL,
	    GLXIIC_GPIO_14_15_DISABLE);
	FUNC0(sc->gpio_res, GLXIIC_GPIOL_IN_AUX1_SEL,
	    GLXIIC_GPIO_14_15_DISABLE);
}