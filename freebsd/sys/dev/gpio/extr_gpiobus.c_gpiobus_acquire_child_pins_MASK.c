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
struct gpiobus_ivar {int npins; int /*<<< orphan*/ * pins; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 struct gpiobus_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gpiobus_ivar*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, device_t child)
{
	struct gpiobus_ivar *devi = FUNC0(child);
	int i;

	for (i = 0; i < devi->npins; i++) {
		/* Reserve the GPIO pin. */
		if (FUNC4(dev, devi->pins[i]) != 0) {
			FUNC3(child, "cannot acquire pin %d\n",
			    devi->pins[i]);
			while (--i >= 0) {
				(void)FUNC6(dev,
				    devi->pins[i]);
			}
			FUNC5(devi);
			return (EBUSY);
		}
	}
	for (i = 0; i < devi->npins; i++) {
		/* Use the child name as pin name. */
		FUNC1(dev, devi->pins[i],
		    FUNC2(child));

	}
	return (0);
}