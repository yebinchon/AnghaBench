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
typedef  size_t uint32_t ;
struct chvgpio_softc {char** sc_pin_names; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int GPIOMAXNAME ; 
 scalar_t__ FUNC0 (struct chvgpio_softc*,size_t) ; 
 struct chvgpio_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint32_t pin, char *name)
{
	struct chvgpio_softc *sc;

	sc = FUNC1(dev);
	if (FUNC0(sc, pin) != 0)
		return (EINVAL);

	/* return pin name from datasheet */
	FUNC2(name, GPIOMAXNAME, "%s", sc->sc_pin_names[pin]);
	name[GPIOMAXNAME - 1] = '\0';
	return (0);
}