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
struct ucred {int cr_ngroups; int /*<<< orphan*/ * cr_groups; } ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  PRIV_SEEOTHERGIDS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct ucred*) ; 
 scalar_t__ FUNC1 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  see_other_gids ; 

int
FUNC2(struct ucred *u1, struct ucred *u2)
{
	int i, match;
	
	if (!see_other_gids) {
		match = 0;
		for (i = 0; i < u1->cr_ngroups; i++) {
			if (FUNC0(u1->cr_groups[i], u2))
				match = 1;
			if (match)
				break;
		}
		if (!match) {
			if (FUNC1(u1, PRIV_SEEOTHERGIDS) != 0)
				return (ESRCH);
		}
	}
	return (0);
}