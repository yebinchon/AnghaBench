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
struct devinfo {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  snap_time; struct devinfo* dinfo; } ;
struct TYPE_4__ {int /*<<< orphan*/  snap_time; struct devinfo* dinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  NSWAP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__ cur_dev ; 
 int /*<<< orphan*/  dlen ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  kd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvmsw ; 
 int /*<<< orphan*/  kvnsw ; 
 TYPE_1__ last_dev ; 
 int /*<<< orphan*/  odlen ; 
 int /*<<< orphan*/  okvnsw ; 
 int /*<<< orphan*/  oulen ; 
 int /*<<< orphan*/  ulen ; 

void
FUNC4(void)
{
	okvnsw = kvnsw;
	if ((kvnsw = FUNC3(kd, kvmsw, NSWAP, 0)) < 0) {
		FUNC2("systat: kvm_getswapinfo failed");
		return;
	}

	odlen = dlen;
	oulen = ulen;
	FUNC0();

	struct devinfo *tmp_dinfo;

	tmp_dinfo = last_dev.dinfo;
	last_dev.dinfo = cur_dev.dinfo;
	cur_dev.dinfo = tmp_dinfo;

	last_dev.snap_time = cur_dev.snap_time;
	FUNC1( &cur_dev );
}