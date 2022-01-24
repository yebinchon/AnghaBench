#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct atkbdc_device {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_6__ {int /*<<< orphan*/ * irq; } ;
typedef  TYPE_1__ atkbdc_softc_t ;
struct TYPE_7__ {scalar_t__ rid; int /*<<< orphan*/  resources; } ;
typedef  TYPE_2__ atkbdc_device_t ;

/* Variables and functions */
 scalar_t__ KBDC_RID_KBD ; 
 int /*<<< orphan*/  M_ATKBDDEV ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (char const*,int) ; 
 scalar_t__ FUNC7 (char const*,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC11(device_t bus, u_int order, const char *name, int unit)
{
	atkbdc_device_t	*ivar;
	atkbdc_softc_t	*sc;
	device_t	child;
	int		t;

	sc = *(atkbdc_softc_t **)FUNC2(bus);
	ivar = FUNC5(sizeof(struct atkbdc_device), M_ATKBDDEV,
		M_NOWAIT | M_ZERO);
	if (!ivar)
		return NULL;

	child = FUNC0(bus, order, name, unit);
	if (child == NULL) {
		FUNC4(ivar, M_ATKBDDEV);
		return child;
	}

	FUNC9(&ivar->resources);
	ivar->rid = order;

	/*
	 * If the device is not created by the PnP BIOS or ACPI, refer
	 * to device hints for IRQ.  We always populate the resource
	 * list entry so we can use a standard bus_get_resource()
	 * method.
	 */
	if (order == KBDC_RID_KBD) {
		if (sc->irq == NULL) {
			if (FUNC7(name, unit, "irq", &t) != 0)
				t = -1;
		} else
			t = FUNC10(sc->irq);
		if (t > 0)
			FUNC8(&ivar->resources, SYS_RES_IRQ,
			    ivar->rid, t, t, 1);
	}

	if (FUNC6(name, unit))
		FUNC1(child);

	FUNC3(child, ivar);

	return child;
}