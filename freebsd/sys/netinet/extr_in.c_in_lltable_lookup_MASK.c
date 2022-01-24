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
typedef  int u_int ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct lltable {int /*<<< orphan*/  llt_ifp; } ;
struct llentry {int la_flags; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int LLE_EXCLUSIVE ; 
 int LLE_LINKED ; 
 int /*<<< orphan*/  FUNC2 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct llentry*) ; 
 int LLE_UNLOCKED ; 
 int /*<<< orphan*/  FUNC4 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct llentry*) ; 
 scalar_t__ FUNC6 (int) ; 
 struct llentry* FUNC7 (struct lltable*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct llentry *
FUNC8(struct lltable *llt, u_int flags, const struct sockaddr *l3addr)
{
	const struct sockaddr_in *sin = (const struct sockaddr_in *)l3addr;
	struct llentry *lle;

	FUNC0(llt->llt_ifp);
	FUNC1(l3addr->sa_family == AF_INET,
	    ("sin_family %d", l3addr->sa_family));
	FUNC1((flags & (LLE_UNLOCKED | LLE_EXCLUSIVE)) !=
	    (LLE_UNLOCKED | LLE_EXCLUSIVE),
	    ("wrong lle request flags: %#x", flags));

	lle = FUNC7(llt, sin->sin_addr);
	if (lle == NULL)
		return (NULL);
	if (flags & LLE_UNLOCKED)
		return (lle);

	if (flags & LLE_EXCLUSIVE)
		FUNC4(lle);
	else
		FUNC2(lle);

	/*
	 * If the afdata lock is not held, the LLE may have been unlinked while
	 * we were blocked on the LLE lock.  Check for this case.
	 */
	if (FUNC6((lle->la_flags & LLE_LINKED) == 0)) {
		if (flags & LLE_EXCLUSIVE)
			FUNC5(lle);
		else
			FUNC3(lle);
		return (NULL);
	}
	return (lle);
}