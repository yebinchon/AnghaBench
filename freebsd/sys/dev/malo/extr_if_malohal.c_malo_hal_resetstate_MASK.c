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
struct malo_hal {int mh_flags; int /*<<< orphan*/  mh_caldata; } ;

/* Variables and functions */
 int MHF_CALDATA ; 
 int /*<<< orphan*/  FUNC0 (struct malo_hal*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(struct malo_hal *mh)
{
	/*
	 * Fetch cal data for later use.
	 * XXX may want to fetch other stuff too.
	 */
	if ((mh->mh_flags & MHF_CALDATA) == 0)
		FUNC0(mh, &mh->mh_caldata);
	return 0;
}