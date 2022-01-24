#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sc_dev; } ;
struct i2s_softc {TYPE_1__ aoa; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {struct i2s_softc* i2s; } ;

/* Variables and functions */
 int GPIO_CTRL_NUM ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__** gpio_ctrls ; 
 int /*<<< orphan*/  FUNC2 (struct i2s_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2s_softc*) ; 
 int /*<<< orphan*/  i2s_delayed_attach ; 
 scalar_t__ i2s_mixer ; 
 int /*<<< orphan*/  i2s_mixer_class ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(void *xsc)
{
	struct i2s_softc 	*sc = xsc;
	device_t 		 self;
	int 			 i;

	self = sc->aoa.sc_dev;

	/* Reset the codec. */
	FUNC2(sc);

	/* If we have a codec, initialize it. */
	if (i2s_mixer)
		FUNC4(self, i2s_mixer_class, i2s_mixer);

	/* Read initial port status. */
	FUNC3(sc);

	/* Enable GPIO interrupt callback. */	
	for (i = 0; i < GPIO_CTRL_NUM; i++)
		if (gpio_ctrls[i])
			gpio_ctrls[i]->i2s = sc;

	FUNC0(i2s_delayed_attach);
	FUNC1(i2s_delayed_attach, M_TEMP);
}