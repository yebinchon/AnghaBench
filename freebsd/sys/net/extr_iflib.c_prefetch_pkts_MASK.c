#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* iflib_fl_t ;
typedef  int /*<<< orphan*/ * caddr_t ;
struct TYPE_5__ {int /*<<< orphan*/ ** ifsd_cl; int /*<<< orphan*/ ** ifsd_m; } ;
struct TYPE_6__ {int ifl_size; TYPE_1__ ifl_sds; } ;

/* Variables and functions */
 int CACHE_PTR_INCREMENT ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC2(iflib_fl_t fl, int cidx)
{
	int nextptr;
	int nrxd = fl->ifl_size;
	caddr_t next_rxd;


	nextptr = (cidx + CACHE_PTR_INCREMENT) & (nrxd-1);
	FUNC1(fl->ifl_sds.ifsd_m[nextptr]);
	FUNC1(fl->ifl_sds.ifsd_cl[nextptr]);
	next_rxd = FUNC0(fl, cidx);
	FUNC1(next_rxd);
	FUNC1(fl->ifl_sds.ifsd_m[(cidx + 1) & (nrxd-1)]);
	FUNC1(fl->ifl_sds.ifsd_m[(cidx + 2) & (nrxd-1)]);
	FUNC1(fl->ifl_sds.ifsd_m[(cidx + 3) & (nrxd-1)]);
	FUNC1(fl->ifl_sds.ifsd_m[(cidx + 4) & (nrxd-1)]);
	FUNC1(fl->ifl_sds.ifsd_cl[(cidx + 1) & (nrxd-1)]);
	FUNC1(fl->ifl_sds.ifsd_cl[(cidx + 2) & (nrxd-1)]);
	FUNC1(fl->ifl_sds.ifsd_cl[(cidx + 3) & (nrxd-1)]);
	FUNC1(fl->ifl_sds.ifsd_cl[(cidx + 4) & (nrxd-1)]);
}