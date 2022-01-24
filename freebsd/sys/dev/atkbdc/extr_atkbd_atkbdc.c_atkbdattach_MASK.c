#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  keyboard_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/ * intr; int /*<<< orphan*/  ih; } ;
typedef  TYPE_1__ atkbd_softc_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_TTY ; 
 int KBDC_RID_KBD ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  atkbdintr ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	atkbd_softc_t *sc;
	keyboard_t *kbd;
	u_long irq;
	int flags;
	int rid;
	int error;

	sc = FUNC6(dev);

	rid = KBDC_RID_KBD;
	irq = FUNC2(dev, SYS_RES_IRQ, rid);
	flags = FUNC5(dev);
	error = FUNC0(dev, &kbd, irq, flags);
	if (error)
		return error;

	/* declare our interrupt handler */
	sc->intr = FUNC1(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
	if (sc->intr == NULL)
		return ENXIO;
	error = FUNC4(dev, sc->intr, INTR_TYPE_TTY, NULL, atkbdintr,
			       kbd, &sc->ih);
	if (error)
		FUNC3(dev, SYS_RES_IRQ, rid, sc->intr);

	return error;
}