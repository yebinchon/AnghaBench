#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lltable {TYPE_1__* llt_ifp; } ;
struct TYPE_4__ {int if_flags; } ;

/* Variables and functions */
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  llentry_update_ifaddr ; 
 int /*<<< orphan*/  FUNC2 (struct lltable*,int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC3(struct lltable *llt)
{

	if (llt->llt_ifp->if_flags & IFF_LOOPBACK)
		return;

	FUNC0(llt->llt_ifp);
	FUNC2(llt, llentry_update_ifaddr, llt->llt_ifp);
	FUNC1(llt->llt_ifp);
}