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
struct sockaddr {int dummy; } ;
struct lltable {int /*<<< orphan*/  (* llt_delete_entry ) (struct lltable*,struct llentry*) ;struct ifnet* llt_ifp; } ;
struct llentry {int la_flags; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  LLE_EXCLUSIVE ; 
 int LLE_IFADDR ; 
 int /*<<< orphan*/  FUNC2 (struct llentry*) ; 
 struct llentry* FUNC3 (struct lltable*,int /*<<< orphan*/ ,struct sockaddr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct lltable*,struct llentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct lltable*,struct llentry*) ; 

int
FUNC6(struct lltable *llt, u_int flags,
    const struct sockaddr *l3addr)
{
	struct llentry *lle;
	struct ifnet *ifp;

	ifp = llt->llt_ifp;
	FUNC0(ifp);
	lle = FUNC3(llt, LLE_EXCLUSIVE, l3addr);

	if (lle == NULL) {
		FUNC1(ifp);
		return (ENOENT);
	}
	if ((lle->la_flags & LLE_IFADDR) != 0 && (flags & LLE_IFADDR) == 0) {
		FUNC1(ifp);
		FUNC2(lle);
		return (EPERM);
	}

	FUNC4(llt, lle);
	FUNC1(ifp);

	llt->llt_delete_entry(llt, lle);

	return (0);
}