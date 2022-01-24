#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int nmbuf; int ncl; int clsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 TYPE_1__ dn_hwm ; 
 int /*<<< orphan*/  dn_hwm_lk ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(int nmbuf, int ncl, int clsize)
{
	bool any;

	any = false;
	FUNC1(&dn_hwm_lk);

	if (nmbuf > dn_hwm.nmbuf) {
		any = true;
		dn_hwm.nmbuf = nmbuf;
	} else
		nmbuf = dn_hwm.nmbuf;

	if (ncl > dn_hwm.ncl) {
		any = true;
		dn_hwm.ncl = ncl;
	} else
		ncl = dn_hwm.ncl;

	if (clsize > dn_hwm.clsize) {
		any = true;
		dn_hwm.clsize = clsize;
	} else
		clsize = dn_hwm.clsize;

	FUNC2(&dn_hwm_lk);

	if (any)
		FUNC0(nmbuf, ncl, clsize);
}