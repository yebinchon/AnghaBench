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
typedef  int uint32_t ;
struct jz4780_gpio_softc {TYPE_1__* pins; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  td_intr_frame; } ;
struct TYPE_3__ {int /*<<< orphan*/  pin_irqsrc; } ;

/* Variables and functions */
 int FUNC0 (struct jz4780_gpio_softc*,int /*<<< orphan*/ ) ; 
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  JZ_GPIO_FLAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(void *arg)
{
	struct jz4780_gpio_softc *sc;
	uint32_t i, interrupts;

	sc = arg;
	interrupts = FUNC0(sc, JZ_GPIO_FLAG);

	for (i = 0; interrupts != 0; i++, interrupts >>= 1) {
		if ((interrupts & 0x1) == 0)
			continue;
		if (FUNC3(&sc->pins[i].pin_irqsrc,
		    curthread->td_intr_frame) != 0) {
			FUNC2(sc->dev, "spurious interrupt %d\n", i);
			FUNC1(sc->dev, &sc->pins[i].pin_irqsrc);
		}
	}

	return (FILTER_HANDLED);
}