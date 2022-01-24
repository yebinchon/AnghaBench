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
struct resource {int dummy; } ;
struct aoagpio_softc {int ctrl; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENXIO ; 
 int GPIO_CTRL_EXTINT_SET ; 
 int INTR_ENTROPY ; 
 int INTR_MPSAFE ; 
 int /*<<< orphan*/  INTR_POLARITY_LOW ; 
 int /*<<< orphan*/  INTR_TRIGGER_EDGE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  aoagpio_int ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct resource*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 struct aoagpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct resource*) ; 

__attribute__((used)) static int 
FUNC6(device_t gpio)
{
	struct aoagpio_softc	*sc;
	struct resource		*r;
	void			*cookie;
	int			 irq, rid = 0;

	sc = FUNC3(gpio);

	if ((1 << sc->ctrl) & GPIO_CTRL_EXTINT_SET) {
		r = FUNC1(gpio, SYS_RES_IRQ, &rid, RF_ACTIVE);
		if (r == NULL)
			return (ENXIO);

		irq = FUNC5(r);
		FUNC0(("interrupting at irq %d\n", irq));

		if (FUNC4(irq, INTR_TRIGGER_EDGE, 
		    INTR_POLARITY_LOW) != 0) 
			return (ENXIO);

		FUNC2(gpio, r, INTR_TYPE_MISC | INTR_MPSAFE |
		    INTR_ENTROPY, NULL, aoagpio_int, gpio, &cookie);
	}

	return (0);
}