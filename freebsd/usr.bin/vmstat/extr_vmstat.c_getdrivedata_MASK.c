#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct devinfo {int /*<<< orphan*/  devices; int /*<<< orphan*/  generation; int /*<<< orphan*/  numdevs; } ;
struct TYPE_5__ {struct devinfo* dinfo; } ;
struct TYPE_4__ {struct devinfo* dinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS_SELECT_ADD ; 
 int /*<<< orphan*/  DS_SELECT_ONLY ; 
 scalar_t__ FUNC0 (int,int) ; 
 TYPE_2__ cur ; 
 int /*<<< orphan*/  da ; 
 int /*<<< orphan*/ * dev_select ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 char* devstat_errbuf ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char**,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  generation ; 
 scalar_t__ FUNC5 (char) ; 
 TYPE_1__ last ; 
 char** FUNC6 (int) ; 
 int /*<<< orphan*/  matches ; 
 int maxshowdevs ; 
 scalar_t__ nflag ; 
 int /*<<< orphan*/  num_devices ; 
 int num_devices_specified ; 
 scalar_t__ num_matches ; 
 int /*<<< orphan*/  num_selected ; 
 int /*<<< orphan*/  num_selections ; 
 char** FUNC7 (char**,int) ; 
 int /*<<< orphan*/  select_generation ; 
 int /*<<< orphan*/  select_mode ; 
 char** specified_devices ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char*) ; 

__attribute__((used)) static char **
FUNC9(char **argv)
{

	if ((num_devices = FUNC3(NULL)) < 0)
		FUNC8(1, "%s", devstat_errbuf);

	cur.dinfo = (struct devinfo *)FUNC0(1, sizeof(struct devinfo));
	last.dinfo = (struct devinfo *)FUNC0(1, sizeof(struct devinfo));

	if (FUNC2(NULL, &cur) == -1)
		FUNC8(1, "%s", devstat_errbuf);

	num_devices = cur.dinfo->numdevs;
	generation = cur.dinfo->generation;

	specified_devices = FUNC6(sizeof(char *));
	for (num_devices_specified = 0; *argv; ++argv) {
		if (FUNC5(**argv))
			break;
		num_devices_specified++;
		specified_devices = FUNC7(specified_devices,
		    sizeof(char *) * num_devices_specified);
		if (specified_devices == NULL) {
			FUNC8(1, "%s", "reallocf (specified_devices)");
		}
		specified_devices[num_devices_specified - 1] = *argv;
	}
	dev_select = NULL;

	if (nflag == 0 && maxshowdevs < num_devices_specified)
		maxshowdevs = num_devices_specified;

	/*
	 * People are generally only interested in disk statistics when
	 * they're running vmstat.  So, that's what we're going to give
	 * them if they don't specify anything by default.  We'll also give
	 * them any other random devices in the system so that we get to
	 * maxshowdevs devices, if that many devices exist.  If the user
	 * specifies devices on the command line, either through a pattern
	 * match or by naming them explicitly, we will give the user only
	 * those devices.
	 */
	if ((num_devices_specified == 0) && (num_matches == 0)) {
		if (FUNC1(da, &matches, &num_matches) != 0)
			FUNC8(1, "%s", devstat_errbuf);
		select_mode = DS_SELECT_ADD;
	} else
		select_mode = DS_SELECT_ONLY;

	/*
	 * At this point, selectdevs will almost surely indicate that the
	 * device list has changed, so we don't look for return values of 0
	 * or 1.  If we get back -1, though, there is an error.
	 */
	if (FUNC4(&dev_select, &num_selected, &num_selections,
	    &select_generation, generation, cur.dinfo->devices,
	    num_devices, matches, num_matches, specified_devices,
	    num_devices_specified, select_mode,
	    maxshowdevs, 0) == -1)
		FUNC8(1, "%s", devstat_errbuf);

	return(argv);
}