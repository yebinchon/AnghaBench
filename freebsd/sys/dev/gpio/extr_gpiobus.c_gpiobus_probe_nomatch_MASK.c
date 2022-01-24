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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpiobus_ivar*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(device_t dev, device_t child)
{
	char pins[128];
	struct gpiobus_ivar *devi;

	devi = FUNC0(child);
	FUNC3(pins, 0, sizeof(pins));
	FUNC2(devi, pins, sizeof(pins));
	if (devi->npins > 1)
		FUNC1(dev, "<unknown device> at pins %s", pins);
	else
		FUNC1(dev, "<unknown device> at pin %s", pins);
	FUNC5(&devi->rl, "irq", SYS_RES_IRQ, "%jd");
	FUNC4("\n");
}