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
struct TYPE_10__ {long double snap_time; TYPE_1__* dinfo; } ;
struct TYPE_9__ {int position; } ;
struct TYPE_8__ {long double snap_time; TYPE_2__* dinfo; } ;
struct TYPE_7__ {int /*<<< orphan*/ * devices; } ;
struct TYPE_6__ {int /*<<< orphan*/ * devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSM_KB_PER_TRANSFER ; 
 int /*<<< orphan*/  DSM_MB_PER_SECOND ; 
 int /*<<< orphan*/  DSM_NONE ; 
 int /*<<< orphan*/  DSM_TRANSFERS_PER_SECOND ; 
 TYPE_5__ cur_dev ; 
 TYPE_4__* dev_select ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long double,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devstat_errbuf ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (long double,int,double) ; 
 scalar_t__ kbpt ; 
 TYPE_3__ last_dev ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,char*,long double,long double,long double) ; 
 scalar_t__ numbers ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wnd ; 

__attribute__((used)) static int
FUNC5(int row, int _col, int dn)
{
	long double transfers_per_second;
	long double kb_per_transfer, mb_per_second;
	long double busy_seconds;
	int di;

	di = dev_select[dn].position;

	busy_seconds = cur_dev.snap_time - last_dev.snap_time;

	if (FUNC0(&cur_dev.dinfo->devices[di],
	    &last_dev.dinfo->devices[di], busy_seconds,
	    DSM_KB_PER_TRANSFER, &kb_per_transfer,
	    DSM_TRANSFERS_PER_SECOND, &transfers_per_second,
	    DSM_MB_PER_SECOND, &mb_per_second, DSM_NONE) != 0)
		FUNC1(1, "%s", devstat_errbuf);

	if (numbers) {
		FUNC3(wnd, row, _col, " %5.2Lf %3.0Lf %5.2Lf ",
			 kb_per_transfer, transfers_per_second,
			 mb_per_second);
		return(row);
	}
	FUNC4(wnd, row++, _col);
	FUNC2(mb_per_second, 50, .5);
	FUNC4(wnd, row++, _col);
	FUNC2(transfers_per_second, 50, .5);
	if (kbpt) {
		FUNC4(wnd, row++, _col);
		FUNC2(kb_per_transfer, 50, .5);
	}

	return(row);

}