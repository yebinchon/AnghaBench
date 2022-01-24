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
struct bhnd_erom_io {int dummy; } ;
struct bhnd_chipid {int dummy; } ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  devclass_t ;
typedef  int /*<<< orphan*/  bhnd_erom_class_t ;

/* Variables and functions */
 int BUS_PROBE_SPECIFIC ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct bhnd_erom_io*,struct bhnd_chipid const*,struct bhnd_chipid*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

bhnd_erom_class_t *
FUNC7(devclass_t bus_devclass,
    struct bhnd_erom_io *eio, const struct bhnd_chipid *hint,
    struct bhnd_chipid *cid)
{
	driver_t		**drivers;
	int			 drv_count;
	bhnd_erom_class_t	*erom_cls;
	int			 error, prio, result;

	erom_cls = NULL;
	prio = 0;

	/* Fetch all available drivers */
	error = FUNC2(bus_devclass, &drivers, &drv_count);
	if (error) {
		FUNC6("error fetching bhnd(4) drivers for %s: %d\n",
		    FUNC3(bus_devclass), error);
		return (NULL);
	}

	/* Enumerate the drivers looking for the best available EROM class */
	for (int i = 0; i < drv_count; i++) {
		struct bhnd_chipid	 pcid;
		bhnd_erom_class_t	*cls;

		/* The default implementation of BHND_BUS_GET_EROM_CLASS()
		 * returns NULL if unimplemented; this should always be safe
		 * to call on arbitrary drivers */
		cls = FUNC0(drivers[i]);
		if (cls == NULL)
			continue;

		FUNC5(cls);

		/* Probe the bus */
		result = FUNC1(cls, eio, hint, &pcid);

		/* The parser did not match if an error was returned */
		if (result > 0)
			continue;
		
		/* Check for a new highest priority match */
		if (erom_cls == NULL || result > prio) {
			prio = result;

			*cid = pcid;
			erom_cls = cls;
		}

		/* Terminate immediately on BUS_PROBE_SPECIFIC */
		if (result == BUS_PROBE_SPECIFIC)
			break;
	}

	FUNC4(drivers, M_TEMP);
	return (erom_cls);
}