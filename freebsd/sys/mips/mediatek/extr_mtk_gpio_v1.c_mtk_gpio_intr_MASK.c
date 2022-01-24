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
typedef  int uint32_t ;
struct mtk_gpio_softc {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  td_intr_frame; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  GPIO_PIOINT ; 
 int FUNC0 (struct mtk_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_gpio_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_gpio_softc*,int) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void *arg)
{
	struct mtk_gpio_softc *sc;
	uint32_t i, interrupts;

	sc = arg;
	interrupts = FUNC0(sc, GPIO_PIOINT);
	FUNC1(sc, GPIO_PIOINT, interrupts);

	for (i = 0; interrupts != 0; i++, interrupts >>= 1) {
		if ((interrupts & 0x1) == 0)
			continue;
		if (FUNC4(FUNC2(sc, i),
		    curthread->td_intr_frame) != 0) {
			FUNC3(sc->dev, "spurious interrupt %d\n", i);
		}
	}       

	return (FILTER_HANDLED);
}