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
struct ofw_pwmbus_ivars {int /*<<< orphan*/  devinfo; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 struct ofw_pwmbus_ivars* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ofw_pwmbus_ivars*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(device_t dev, device_t child)
{
	struct ofw_pwmbus_ivars *ivars;

	ivars = FUNC0(child);
	if (ivars != NULL) {
		FUNC2(&ivars->devinfo);
		FUNC1(ivars, M_DEVBUF);
	}
}