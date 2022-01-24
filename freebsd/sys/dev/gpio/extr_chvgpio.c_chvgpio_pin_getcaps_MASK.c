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
struct chvgpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_OUTPUT ; 
 scalar_t__ FUNC0 (struct chvgpio_softc*,int) ; 
 struct chvgpio_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, uint32_t pin, uint32_t *caps)
{
	struct chvgpio_softc *sc;

	sc = FUNC1(dev);
	if (FUNC0(sc, pin) != 0)
		return (EINVAL);

	*caps = 0;
	if (FUNC0(sc, pin))
		*caps = GPIO_PIN_INPUT | GPIO_PIN_OUTPUT;

	return (0);
}