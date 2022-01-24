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
typedef  int /*<<< orphan*/  u_long ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int KBDC_RID_KBD ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ bootverbose ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct resource *res;
	u_long irq;
	int flags;
	int rid;

	FUNC5(dev, "AT Keyboard");

	/* obtain parameters */
	flags = FUNC3(dev);

	/* see if IRQ is available */
	rid = KBDC_RID_KBD;
	res = FUNC1(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
	if (res == NULL) {
		if (bootverbose)
			FUNC4(dev, "unable to allocate IRQ\n");
		return ENXIO;
	}
	irq = FUNC6(res);
	FUNC2(dev, SYS_RES_IRQ, rid, res);

	/* probe the device */
	return FUNC0(dev, irq, flags);
}