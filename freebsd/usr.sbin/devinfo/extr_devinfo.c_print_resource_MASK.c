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
struct devinfo_rman {int dm_size; } ;
struct devinfo_res {int dr_start; int dr_size; int /*<<< orphan*/  dr_rman; } ;

/* Variables and functions */
 struct devinfo_rman* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

void
FUNC2(struct devinfo_res *res)
{
	struct devinfo_rman	*rman;
	int			hexmode;

	rman = FUNC0(res->dr_rman);
	hexmode =  (rman->dm_size > 1000) || (rman->dm_size == 0);
	FUNC1(hexmode ? "0x%jx" : "%ju", res->dr_start);
	if (res->dr_size > 1)
		FUNC1(hexmode ? "-0x%jx" : "-%ju",
		    res->dr_start + res->dr_size - 1);
}