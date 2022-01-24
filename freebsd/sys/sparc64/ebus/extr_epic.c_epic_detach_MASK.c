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
struct epic_softc {int /*<<< orphan*/  sc_res; int /*<<< orphan*/  sc_led_dev_power; int /*<<< orphan*/  sc_led_dev_alert; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct epic_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct epic_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  epic_res_spec ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct epic_softc *sc;

	sc = FUNC2(dev);

	FUNC3(sc->sc_led_dev_alert);
	FUNC3(sc->sc_led_dev_power);

	FUNC1(dev, epic_res_spec, sc->sc_res);

	FUNC0(sc);

	return (0);
}