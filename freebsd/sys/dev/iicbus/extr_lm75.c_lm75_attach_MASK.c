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
struct TYPE_2__ {void* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct lm75_softc {TYPE_1__ enum_hook; int /*<<< orphan*/  sc_addr; void* sc_dev; } ;
typedef  void* device_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 struct lm75_softc* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  lm75_start ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct lm75_softc *sc;

	sc = FUNC1(dev);
	sc->sc_dev = dev;
	sc->sc_addr = FUNC2(dev);

	sc->enum_hook.ich_func = lm75_start;
	sc->enum_hook.ich_arg = dev;

	/*
	 * We have to wait until interrupts are enabled.  Usually I2C read
	 * and write only works when the interrupts are available.
	 */
	if (FUNC0(&sc->enum_hook) != 0)
		return (ENOMEM);

	return (0);
}