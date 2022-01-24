#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {long* cp_time; long double snap_time; TYPE_1__* dinfo; } ;
struct TYPE_9__ {scalar_t__ selected; int position; int /*<<< orphan*/  unit_number; int /*<<< orphan*/ * device_name; } ;
struct TYPE_8__ {long* cp_time; long double snap_time; TYPE_2__* dinfo; } ;
struct TYPE_7__ {int /*<<< orphan*/ * devices; } ;
struct TYPE_6__ {int /*<<< orphan*/ * devices; } ;

/* Variables and functions */
 int CPUSTATES ; 
 int /*<<< orphan*/  DSM_NONE ; 
 int /*<<< orphan*/  DSM_TRANSFERS_PER_SECOND ; 
 TYPE_5__ cur ; 
 TYPE_4__* dev_select ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long double,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devstat_errbuf ; 
 TYPE_3__ last ; 
 scalar_t__ maxshowdevs ; 
 int num_devices ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long double) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(void)
{
	long double busy_seconds, transfers_per_second;
	long tmp;
	int di, dn, state;

	for (state = 0; state < CPUSTATES; ++state) {
		tmp = cur.cp_time[state];
		cur.cp_time[state] -= last.cp_time[state];
		last.cp_time[state] = tmp;
	}

	busy_seconds = cur.snap_time - last.snap_time;

	FUNC6("device");
	for (dn = 0; dn < num_devices; dn++) {
		if (dev_select[dn].selected == 0 ||
		    dev_select[dn].selected > maxshowdevs)
			continue;

		di = dev_select[dn].position;

		if (FUNC0(&cur.dinfo->devices[di],
		    &last.dinfo->devices[di], busy_seconds,
		    DSM_TRANSFERS_PER_SECOND, &transfers_per_second,
		    DSM_NONE) != 0)
			FUNC4(1, "%s", devstat_errbuf);

		FUNC5("device");
		FUNC3("{ekq:name/%c%c%d}{:transfers/%3.0Lf} ",
		    dev_select[dn].device_name[0],
		    dev_select[dn].device_name[1],
		    dev_select[dn].unit_number,
		    transfers_per_second);
		FUNC1("device");
	}
	FUNC2("device");
}