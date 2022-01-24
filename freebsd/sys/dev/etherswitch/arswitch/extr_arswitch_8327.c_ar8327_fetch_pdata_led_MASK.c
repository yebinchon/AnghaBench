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
struct arswitch_softc {int /*<<< orphan*/  sc_dev; } ;
struct ar8327_led_cfg {int led_ctrl0; int led_ctrl1; int led_ctrl2; int led_ctrl3; int open_drain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static int
FUNC3(struct arswitch_softc *sc,
    struct ar8327_led_cfg *lcfg)
{
	int val;

	val = 0;
	if (FUNC2(FUNC0(sc->sc_dev),
	    FUNC1(sc->sc_dev),
	    "led.ctrl0", &val) != 0)
		return (0);
	lcfg->led_ctrl0 = val;

	val = 0;
	if (FUNC2(FUNC0(sc->sc_dev),
	    FUNC1(sc->sc_dev),
	    "led.ctrl1", &val) != 0)
		return (0);
	lcfg->led_ctrl1 = val;

	val = 0;
	if (FUNC2(FUNC0(sc->sc_dev),
	    FUNC1(sc->sc_dev),
	    "led.ctrl2", &val) != 0)
		return (0);
	lcfg->led_ctrl2 = val;

	val = 0;
	if (FUNC2(FUNC0(sc->sc_dev),
	    FUNC1(sc->sc_dev),
	    "led.ctrl3", &val) != 0)
		return (0);
	lcfg->led_ctrl3 = val;

	val = 0;
	if (FUNC2(FUNC0(sc->sc_dev),
	    FUNC1(sc->sc_dev),
	    "led.open_drain", &val) != 0)
		return (0);
	lcfg->open_drain = val;

	return (1);
}