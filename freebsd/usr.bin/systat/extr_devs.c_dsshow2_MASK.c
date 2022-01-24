#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct statinfo {long double snap_time; TYPE_1__* dinfo; } ;
struct TYPE_7__ {int position; } ;
struct TYPE_6__ {int /*<<< orphan*/  creation_time; } ;
struct TYPE_5__ {TYPE_2__* devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSM_BUSY_PCT ; 
 int /*<<< orphan*/  DSM_KB_PER_TRANSFER ; 
 int /*<<< orphan*/  DSM_MB_PER_SECOND ; 
 int /*<<< orphan*/  DSM_NONE ; 
 int /*<<< orphan*/  DSM_TRANSFERS_PER_SECOND ; 
 TYPE_4__* dev_select ; 
 long double FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_2__*,long double,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devstat_errbuf ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (long double,int,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(int diskcol, int diskrow, int dn, int lc, struct statinfo *now, struct statinfo *then)
{
	long double transfers_per_second;
	long double kb_per_transfer, mb_per_second;
	long double elapsed_time, device_busy;
	int di;

	di = dev_select[dn].position;

	if (then != NULL) {
		/* Calculate relative to previous sample */
		elapsed_time = now->snap_time - then->snap_time;
	} else {
		/* Calculate relative to device creation */
		elapsed_time = now->snap_time - FUNC0(
		    &now->dinfo->devices[di].creation_time, NULL);
	}

	if (FUNC1(&now->dinfo->devices[di], then ?
	    &then->dinfo->devices[di] : NULL, elapsed_time,
	    DSM_KB_PER_TRANSFER, &kb_per_transfer,
	    DSM_TRANSFERS_PER_SECOND, &transfers_per_second,
	    DSM_MB_PER_SECOND, &mb_per_second,
	    DSM_BUSY_PCT, &device_busy,
	    DSM_NONE) != 0)
		FUNC2(1, "%s", devstat_errbuf);

	lc = diskcol + lc * 6;
	FUNC3(kb_per_transfer, diskrow + 1, lc, 5, 2, 0);
	FUNC3(transfers_per_second, diskrow + 2, lc, 5, 0, 0);
	FUNC3(mb_per_second, diskrow + 3, lc, 5, 2, 0);
	FUNC3(device_busy, diskrow + 4, lc, 5, 0, 0);
}