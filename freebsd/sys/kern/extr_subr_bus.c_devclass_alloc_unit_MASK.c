#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * device_t ;
typedef  TYPE_1__* devclass_t ;
struct TYPE_4__ {char* name; int maxunit; int /*<<< orphan*/ ** devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int EEXIST ; 
 int ENOMEM ; 
 int MINALLOCSIZE ; 
 int /*<<< orphan*/  M_BUS ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,int) ; 
 scalar_t__ FUNC9 (char*,int,char*,char const**) ; 
 int FUNC10 (int,int) ; 

__attribute__((used)) static int
FUNC11(devclass_t dc, device_t dev, int *unitp)
{
	const char *s;
	int unit = *unitp;

	FUNC2(("unit %d in devclass %s", unit, FUNC1(dc)));

	/* Ask the parent bus if it wants to wire this device. */
	if (unit == -1)
		FUNC0(FUNC5(dev), dev, dc->name,
		    &unit);

	/* If we were given a wired unit number, check for existing device */
	/* XXX imp XXX */
	if (unit != -1) {
		if (unit >= 0 && unit < dc->maxunit &&
		    dc->devices[unit] != NULL) {
			if (bootverbose)
				FUNC8("%s: %s%d already exists; skipping it\n",
				    dc->name, dc->name, *unitp);
			return (EEXIST);
		}
	} else {
		/* Unwired device, find the next available slot for it */
		unit = 0;
		for (unit = 0;; unit++) {
			/* If there is an "at" hint for a unit then skip it. */
			if (FUNC9(dc->name, unit, "at", &s) ==
			    0)
				continue;

			/* If this device slot is already in use, skip it. */
			if (unit < dc->maxunit && dc->devices[unit] != NULL)
				continue;

			break;
		}
	}

	/*
	 * We've selected a unit beyond the length of the table, so let's
	 * extend the table to make room for all units up to and including
	 * this one.
	 */
	if (unit >= dc->maxunit) {
		device_t *newlist, *oldlist;
		int newsize;

		oldlist = dc->devices;
		newsize = FUNC10((unit + 1), MINALLOCSIZE / sizeof(device_t));
		newlist = FUNC7(sizeof(device_t) * newsize, M_BUS, M_NOWAIT);
		if (!newlist)
			return (ENOMEM);
		if (oldlist != NULL)
			FUNC3(oldlist, newlist, sizeof(device_t) * dc->maxunit);
		FUNC4(newlist + dc->maxunit,
		    sizeof(device_t) * (newsize - dc->maxunit));
		dc->devices = newlist;
		dc->maxunit = newsize;
		if (oldlist != NULL)
			FUNC6(oldlist, M_BUS);
	}
	FUNC2(("now: unit %d in devclass %s", unit, FUNC1(dc)));

	*unitp = unit;
	return (0);
}