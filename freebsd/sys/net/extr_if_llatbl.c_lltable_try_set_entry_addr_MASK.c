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
struct llentry {int la_flags; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct llentry*) ; 
 int LLE_DELETED ; 
 int /*<<< orphan*/  FUNC3 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,struct llentry*,char const*,size_t,int) ; 

int
FUNC9(struct ifnet *ifp, struct llentry *lle,
    const char *linkhdr, size_t linkhdrsize, int lladdr_off)
{

	/* Perform real LLE update */
	/* use afdata WLOCK to update fields */
	FUNC6(lle);
	FUNC2(lle);
	FUNC7(lle);
	FUNC0(ifp);
	FUNC5(lle);

	/*
	 * Since we droppped LLE lock, other thread might have deleted
	 * this lle. Check and return
	 */
	if ((lle->la_flags & LLE_DELETED) != 0) {
		FUNC1(ifp);
		FUNC3(lle);
		return (0);
	}

	/* Update data */
	FUNC8(ifp, lle, linkhdr, linkhdrsize, lladdr_off);

	FUNC1(ifp);

	FUNC4(lle);

	return (1);
}