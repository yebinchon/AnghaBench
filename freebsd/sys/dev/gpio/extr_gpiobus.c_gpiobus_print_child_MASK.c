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
struct gpiobus_ivar {int npins; int /*<<< orphan*/  rl; } ;
typedef  int /*<<< orphan*/  pins ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct gpiobus_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gpiobus_ivar*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(device_t dev, device_t child)
{
	char pins[128];
	int retval = 0;
	struct gpiobus_ivar *devi;

	devi = FUNC0(child);
	FUNC4(pins, 0, sizeof(pins));
	retval += FUNC2(dev, child);
	if (devi->npins > 0) {
		if (devi->npins > 1)
			retval += FUNC5(" at pins ");
		else
			retval += FUNC5(" at pin ");
		FUNC3(devi, pins, sizeof(pins));
		retval += FUNC5("%s", pins);
	}
	FUNC6(&devi->rl, "irq", SYS_RES_IRQ, "%jd");
	retval += FUNC1(dev, child);

	return (retval);
}