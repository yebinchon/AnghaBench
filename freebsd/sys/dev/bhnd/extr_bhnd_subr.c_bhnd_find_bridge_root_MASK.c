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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ bhnd_devclass ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

device_t
FUNC5(device_t dev, devclass_t bus_class)
{
	devclass_t	bhndb_class;
	device_t	parent;

	FUNC0(FUNC2(FUNC4(dev)) == bhnd_devclass,
	   ("%s not a bhnd device", FUNC3(dev)));

	bhndb_class = FUNC1("bhndb");

	/* Walk the device tree until we hit a bridge */
	parent = dev;
	while ((parent = FUNC4(parent)) != NULL) {
		if (FUNC2(parent) == bhndb_class)
			break;
	}

	/* No bridge? */
	if (parent == NULL)
		return (NULL);

	/* Search for a parent attached to the expected bus class */
	while ((parent = FUNC4(parent)) != NULL) {
		device_t bus;

		bus = FUNC4(parent);
		if (bus != NULL && FUNC2(bus) == bus_class)
			return (parent);
	}

	/* Not found */
	return (NULL);
}