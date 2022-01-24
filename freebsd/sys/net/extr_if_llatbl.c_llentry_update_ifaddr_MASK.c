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
typedef  int /*<<< orphan*/  u_char ;
struct lltable {int /*<<< orphan*/  llt_af; } ;
struct llentry {int la_flags; int /*<<< orphan*/  r_linkdata; int /*<<< orphan*/ * ll_addr; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  linkhdr ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct ifnet*) ; 
 int LLE_IFADDR ; 
 int LLE_MAX_LINKHDR ; 
 int LLE_VALID ; 
 int /*<<< orphan*/  FUNC1 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC5(struct lltable *llt, struct llentry *lle, void *farg)
{
	struct ifnet *ifp;
	u_char linkhdr[LLE_MAX_LINKHDR];
	size_t linkhdrsize;
	u_char *lladdr;
	int lladdr_off;

	ifp = (struct ifnet *)farg;

	lladdr = lle->ll_addr;

	FUNC1(lle);
	if ((lle->la_flags & LLE_VALID) == 0) {
		FUNC2(lle);
		return (0);
	}

	if ((lle->la_flags & LLE_IFADDR) != 0)
		lladdr = FUNC0(ifp);

	linkhdrsize = sizeof(linkhdr);
	FUNC3(ifp, llt->llt_af, lladdr, linkhdr, &linkhdrsize,
	    &lladdr_off);
	FUNC4(lle->r_linkdata, linkhdr, linkhdrsize);
	FUNC2(lle);

	return (0);
}