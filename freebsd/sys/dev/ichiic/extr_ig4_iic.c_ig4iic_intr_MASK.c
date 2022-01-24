#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ intr_mask; int /*<<< orphan*/  io_lock; } ;
typedef  TYPE_1__ ig4iic_softc_t ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int FILTER_STRAY ; 
 int /*<<< orphan*/  IG4_REG_INTR_STAT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(void *cookie)
{
	ig4iic_softc_t *sc = cookie;
	int retval = FILTER_STRAY;

	FUNC1(&sc->io_lock);
	/* Ignore stray interrupts */
	if (sc->intr_mask != 0 && FUNC3(sc, IG4_REG_INTR_STAT) != 0) {
		/* Interrupt bits are cleared in wait_intr() loop */
		FUNC0(sc, 0);
		FUNC4(sc);
		retval = FILTER_HANDLED;
	}
	FUNC2(&sc->io_lock);

	return (retval);
}