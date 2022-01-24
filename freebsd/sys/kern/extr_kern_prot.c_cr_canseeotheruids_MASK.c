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
struct ucred {scalar_t__ cr_ruid; } ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  PRIV_SEEOTHERUIDS ; 
 scalar_t__ FUNC0 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  see_other_uids ; 

int
FUNC1(struct ucred *u1, struct ucred *u2)
{

	if (!see_other_uids && u1->cr_ruid != u2->cr_ruid) {
		if (FUNC0(u1, PRIV_SEEOTHERUIDS) != 0)
			return (ESRCH);
	}
	return (0);
}