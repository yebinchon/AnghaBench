#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_13__ ;

/* Type definitions */
typedef  TYPE_1__* driverlink_t ;
typedef  TYPE_2__* device_t ;
typedef  TYPE_3__* devclass_t ;
struct TYPE_24__ {struct TYPE_24__* parent; } ;
struct TYPE_23__ {scalar_t__ state; int flags; scalar_t__ devflags; int /*<<< orphan*/  unit; TYPE_3__* devclass; TYPE_13__* driver; } ;
struct TYPE_22__ {scalar_t__ pass; TYPE_13__* driver; } ;
struct TYPE_21__ {char* name; } ;

/* Variables and functions */
 int BUS_PROBE_NOWILDCARD ; 
 int FUNC0 (TYPE_2__*) ; 
 int DF_FIXEDCLASS ; 
 int DF_REBID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_13__*) ; 
 scalar_t__ DS_ALIVE ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GIANT_REQUIRED ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ bus_current_pass ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_2__*) ; 
 char* FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,char*) ; 
 int FUNC7 (TYPE_2__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_1__* FUNC9 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_1__* FUNC10 (TYPE_3__*,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,char*,scalar_t__*) ; 

int
FUNC14(device_t dev, device_t child)
{
	devclass_t dc;
	driverlink_t best = NULL;
	driverlink_t dl;
	int result, pri = 0;
	int hasclass = (child->devclass != NULL);

	GIANT_REQUIRED;

	dc = dev->devclass;
	if (!dc)
		FUNC11("device_probe_child: parent device has no devclass");

	/*
	 * If the state is already probed, then return.  However, don't
	 * return if we can rebid this object.
	 */
	if (child->state == DS_ALIVE && (child->flags & DF_REBID) == 0)
		return (0);

	for (; dc; dc = dc->parent) {
		for (dl = FUNC9(dc, child);
		     dl;
		     dl = FUNC10(dc, child, dl)) {
			/* If this driver's pass is too high, then ignore it. */
			if (dl->pass > bus_current_pass)
				continue;

			FUNC2(("Trying %s", FUNC1(dl->driver)));
			result = FUNC7(child, dl->driver);
			if (result == ENOMEM)
				return (result);
			else if (result != 0)
				continue;
			if (!hasclass) {
				if (FUNC6(child,
				    dl->driver->name) != 0) {
					char const * devname =
					    FUNC5(child);
					if (devname == NULL)
						devname = "(unknown)";
					FUNC12("driver bug: Unable to set "
					    "devclass (class: %s "
					    "devname: %s)\n",
					    dl->driver->name,
					    devname);
					(void)FUNC7(child, NULL);
					continue;
				}
			}

			/* Fetch any flags for the device before probing. */
			FUNC13(dl->driver->name, child->unit,
			    "flags", &child->devflags);

			result = FUNC0(child);

			/* Reset flags and devclass before the next probe. */
			child->devflags = 0;
			if (!hasclass)
				(void)FUNC6(child, NULL);

			/*
			 * If the driver returns SUCCESS, there can be
			 * no higher match for this device.
			 */
			if (result == 0) {
				best = dl;
				pri = 0;
				break;
			}

			/*
			 * Reset DF_QUIET in case this driver doesn't
			 * end up as the best driver.
			 */
			FUNC8(child);

			/*
			 * Probes that return BUS_PROBE_NOWILDCARD or lower
			 * only match on devices whose driver was explicitly
			 * specified.
			 */
			if (result <= BUS_PROBE_NOWILDCARD &&
			    !(child->flags & DF_FIXEDCLASS)) {
				result = ENXIO;
			}

			/*
			 * The driver returned an error so it
			 * certainly doesn't match.
			 */
			if (result > 0) {
				(void)FUNC7(child, NULL);
				continue;
			}

			/*
			 * A priority lower than SUCCESS, remember the
			 * best matching driver. Initialise the value
			 * of pri for the first match.
			 */
			if (best == NULL || result > pri) {
				best = dl;
				pri = result;
				continue;
			}
		}
		/*
		 * If we have an unambiguous match in this devclass,
		 * don't look in the parent.
		 */
		if (best && pri == 0)
			break;
	}

	/*
	 * If we found a driver, change state and initialise the devclass.
	 */
	/* XXX What happens if we rebid and got no best? */
	if (best) {
		/*
		 * If this device was attached, and we were asked to
		 * rescan, and it is a different driver, then we have
		 * to detach the old driver and reattach this new one.
		 * Note, we don't have to check for DF_REBID here
		 * because if the state is > DS_ALIVE, we know it must
		 * be.
		 *
		 * This assumes that all DF_REBID drivers can have
		 * their probe routine called at any time and that
		 * they are idempotent as well as completely benign in
		 * normal operations.
		 *
		 * We also have to make sure that the detach
		 * succeeded, otherwise we fail the operation (or
		 * maybe it should just fail silently?  I'm torn).
		 */
		if (child->state > DS_ALIVE && best->driver != child->driver)
			if ((result = FUNC4(dev)) != 0)
				return (result);

		/* Set the winning driver, devclass, and flags. */
		if (!child->devclass) {
			result = FUNC6(child, best->driver->name);
			if (result != 0)
				return (result);
		}
		result = FUNC7(child, best->driver);
		if (result != 0)
			return (result);
		FUNC13(best->driver->name, child->unit,
		    "flags", &child->devflags);

		if (pri < 0) {
			/*
			 * A bit bogus. Call the probe method again to make
			 * sure that we have the right description.
			 */
			FUNC0(child);
#if 0
			child->flags |= DF_REBID;
#endif
		} else
			child->flags &= ~DF_REBID;
		child->state = DS_ALIVE;

		FUNC3();
		return (0);
	}

	return (ENXIO);
}