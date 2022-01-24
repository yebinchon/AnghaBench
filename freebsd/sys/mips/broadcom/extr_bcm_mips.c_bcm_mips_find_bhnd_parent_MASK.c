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
typedef  int /*<<< orphan*/ * device_t ;
typedef  scalar_t__ devclass_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC3(device_t dev)
{
	device_t	core, bus;
	devclass_t	bhnd_class;

	bhnd_class = FUNC0("bhnd");
	core = dev;
	while ((bus = FUNC2(core)) != NULL) {
		if (FUNC1(bus) == bhnd_class)
			return (core);

		core = bus;
	}

	/* Not found */
	return (NULL);
}