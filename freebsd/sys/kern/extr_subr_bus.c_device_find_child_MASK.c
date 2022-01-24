#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* device_t ;
typedef  int /*<<< orphan*/  devclass_t ;
struct TYPE_5__ {struct TYPE_5__* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

device_t
FUNC3(device_t dev, const char *classname, int unit)
{
	devclass_t dc;
	device_t child;

	dc = FUNC0(classname);
	if (!dc)
		return (NULL);

	if (unit != -1) {
		child = FUNC1(dc, unit);
		if (child && child->parent == dev)
			return (child);
	} else {
		for (unit = 0; unit < FUNC2(dc); unit++) {
			child = FUNC1(dc, unit);
			if (child && child->parent == dev)
				return (child);
		}
	}
	return (NULL);
}