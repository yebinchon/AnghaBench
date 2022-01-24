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
struct siis_controller {TYPE_1__* interrupt; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/ * argument; int /*<<< orphan*/ * function; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct siis_controller* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, device_t child, struct resource *irq,
		      void *cookie)
{
	struct siis_controller *ctlr = FUNC1(dev);
	int unit = (intptr_t)FUNC0(child);

	ctlr->interrupt[unit].function = NULL;
	ctlr->interrupt[unit].argument = NULL;
	return (0);
}