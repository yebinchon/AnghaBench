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
typedef  int /*<<< orphan*/  uint32_t ;
struct gpiobus_ivar {uintptr_t npins; int /*<<< orphan*/ * pins; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct gpiobus_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
#define  GPIOBUS_IVAR_NPINS 129 
#define  GPIOBUS_IVAR_PINS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gpiobus_ivar*) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child, int which, uintptr_t value)
{
	struct gpiobus_ivar *devi;
	const uint32_t *ptr;
	int i;

	devi = FUNC0(child);
        switch (which) {
	case GPIOBUS_IVAR_NPINS:
		/* GPIO ivars are set once. */
		if (devi->npins != 0) {
			return (EBUSY);
		}
		devi->npins = value;
		if (FUNC3(devi) != 0) {
			FUNC1(child, "cannot allocate device ivars\n");
			devi->npins = 0;
			return (ENOMEM);
		}
		break;
	case GPIOBUS_IVAR_PINS:
		ptr = (const uint32_t *)value;
		for (i = 0; i < devi->npins; i++)
			devi->pins[i] = ptr[i];
		if (FUNC2(dev, child) != 0)
			return (EBUSY);
		break;
        default:
                return (ENOENT);
        }

        return (0);
}