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
struct bytgpio_softc {char* sc_bank_prefix; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int GPIOMAXNAME ; 
 scalar_t__ FUNC0 (struct bytgpio_softc*,int /*<<< orphan*/ ) ; 
 struct bytgpio_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint32_t pin, char *name)
{
	struct bytgpio_softc *sc;

	sc = FUNC1(dev);
	if (FUNC0(sc, pin) != 0)
		return (EINVAL);

	/* Set a very simple name */
	FUNC2(name, GPIOMAXNAME, "%s%u", sc->sc_bank_prefix, pin);
	name[GPIOMAXNAME - 1] = '\0';

	return (0);
}