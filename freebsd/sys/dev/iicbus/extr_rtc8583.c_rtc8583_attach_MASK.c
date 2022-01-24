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
struct TYPE_2__ {struct rtc8583_softc* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct rtc8583_softc {TYPE_1__ init_hook; int /*<<< orphan*/  dev; int /*<<< orphan*/  busdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rtc8583_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc8583_init ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct rtc8583_softc	*sc;
	
	sc = FUNC2(dev);
	sc->dev = dev;
	sc->busdev = FUNC1(sc->dev);

	/*
	 * Chip init must wait until interrupts are enabled.  Often i2c access
	 * works only when the interrupts are available.
	 */
	sc->init_hook.ich_func = rtc8583_init;
	sc->init_hook.ich_arg = sc;
	if (FUNC0(&sc->init_hook) != 0)
		return (ENOMEM);

	return (0);
}