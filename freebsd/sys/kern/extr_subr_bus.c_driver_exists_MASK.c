#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* device_t ;
typedef  TYPE_2__* devclass_t ;
struct TYPE_6__ {struct TYPE_6__* parent; } ;
struct TYPE_5__ {TYPE_2__* devclass; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,char const*) ; 

__attribute__((used)) static bool
FUNC1(device_t bus, const char *driver)
{
	devclass_t dc;

	for (dc = bus->devclass; dc != NULL; dc = dc->parent) {
		if (FUNC0(dc, driver) != NULL)
			return (true);
	}
	return (false);
}