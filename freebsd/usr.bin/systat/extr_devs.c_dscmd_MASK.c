#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct statinfo {TYPE_1__* dinfo; } ;
struct TYPE_4__ {int /*<<< orphan*/  unit_number; int /*<<< orphan*/  device_name; } ;
struct TYPE_3__ {TYPE_2__* devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMDLINE ; 
 scalar_t__ DS_MATCHTYPE_NONE ; 
 scalar_t__ DS_MATCHTYPE_PATTERN ; 
 scalar_t__ DS_MATCHTYPE_SPEC ; 
 int /*<<< orphan*/  DS_SELECT_ADD ; 
 int /*<<< orphan*/  DS_SELECT_ADDONLY ; 
 int /*<<< orphan*/  DS_SELECT_ONLY ; 
 int /*<<< orphan*/  DS_SELECT_REMOVE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  dev_select ; 
 int /*<<< orphan*/  devstat_errbuf ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int,struct statinfo*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int,struct statinfo*) ; 
 int /*<<< orphan*/  generation ; 
 scalar_t__ last_type ; 
 int /*<<< orphan*/ * matches ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int num_devices ; 
 int /*<<< orphan*/  num_devices_specified ; 
 int /*<<< orphan*/  num_matches ; 
 int /*<<< orphan*/  num_selected ; 
 int /*<<< orphan*/  num_selections ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  select_generation ; 
 int /*<<< orphan*/ * specified_devices ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

int
FUNC8(const char *cmd, const char *args, int maxshowdevs, struct statinfo *s1)
{
	int retval;

	if (FUNC5(cmd, "display") || FUNC5(cmd, "add"))
		return(FUNC3(args, DS_SELECT_ADDONLY, maxshowdevs, s1));
	if (FUNC5(cmd, "ignore") || FUNC5(cmd, "delete"))
		return(FUNC3(args, DS_SELECT_REMOVE, maxshowdevs, s1));
	if (FUNC5(cmd, "show") || FUNC5(cmd, "only"))
		return(FUNC3(args, DS_SELECT_ONLY, maxshowdevs, s1));
	if (FUNC5(cmd, "type") || FUNC5(cmd, "match"))
		return(FUNC2(args, DS_SELECT_ONLY, maxshowdevs, s1));
	if (FUNC5(cmd, "refresh")) {
		retval = FUNC1(&dev_select, &num_selected,
		    &num_selections, &select_generation, generation,
		    s1->dinfo->devices, num_devices,
		    (last_type ==DS_MATCHTYPE_PATTERN) ?  matches : NULL,
		    (last_type ==DS_MATCHTYPE_PATTERN) ?  num_matches : 0,
		    (last_type == DS_MATCHTYPE_SPEC) ?specified_devices : NULL,
		    (last_type == DS_MATCHTYPE_SPEC) ?num_devices_specified : 0,
		    (last_type == DS_MATCHTYPE_NONE) ?  DS_SELECT_ADD :
		    DS_SELECT_ADDONLY, maxshowdevs, 0);
		if (retval == -1) {
			FUNC7("%s", devstat_errbuf);
			return(0);
		} else if (retval == 1)
			return(2);
	}
	if (FUNC5(cmd, "drives")) {
		int i;
		FUNC4(CMDLINE, 0);
		FUNC0();
		for (i = 0; i < num_devices; i++) {
			FUNC6("%s%d ", s1->dinfo->devices[i].device_name,
			       s1->dinfo->devices[i].unit_number);
		}
		return(1);
	}
	return(0);
}