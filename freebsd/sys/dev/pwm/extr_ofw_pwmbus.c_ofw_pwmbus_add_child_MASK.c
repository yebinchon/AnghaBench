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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {int obd_node; } ;
struct ofw_pwmbus_ivars {TYPE_1__ devinfo; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ofw_pwmbus_ivars*) ; 
 int /*<<< orphan*/  FUNC2 (struct ofw_pwmbus_ivars*,int /*<<< orphan*/ ) ; 
 struct ofw_pwmbus_ivars* FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static device_t
FUNC4(device_t dev, u_int order, const char *name, int unit)
{
	device_t child;
	struct ofw_pwmbus_ivars *ivars;

	if ((ivars = FUNC3(sizeof(struct ofw_pwmbus_ivars), M_DEVBUF,
	    M_NOWAIT | M_ZERO)) == NULL) {
		return (NULL);
	}

	if ((child = FUNC0(dev, order, name, unit)) == NULL) {
		FUNC2(ivars, M_DEVBUF);
		return (NULL);
	}

	ivars->devinfo.obd_node = -1;
	FUNC1(child, ivars);

	return (child);
}