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
struct arswitch_softc {int numphys; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_2__ {int shift; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arswitch_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct arswitch_softc*) ; 
 int EINVAL ; 
 int ETHERSWITCH_PORT_LED_MAX ; 
 TYPE_1__** ar8327_led_mapping ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int* led_pattern_table ; 

__attribute__((used)) static int
FUNC3(struct arswitch_softc *sc, int phy, int led, int style)
{
	int shift;
	int err;

	if (phy < 0 || phy > sc->numphys)
		return EINVAL;

	if (style < 0 || style > ETHERSWITCH_PORT_LED_MAX)
		return (EINVAL);

	FUNC0(sc);

	shift = ar8327_led_mapping[phy][led].shift;
	err = (FUNC2(sc->sc_dev,
	    ar8327_led_mapping[phy][led].reg,
	    0x03 << shift, led_pattern_table[style] << shift));
	FUNC1(sc);

	return (err);
}