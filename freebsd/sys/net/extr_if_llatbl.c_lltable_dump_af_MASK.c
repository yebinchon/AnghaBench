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
struct sysctl_req {int dummy; } ;
struct lltable {scalar_t__ llt_dump_entry; TYPE_1__* llt_ifp; } ;
struct epoch_tracker {int dummy; } ;
typedef  int /*<<< orphan*/  llt_foreach_cb_t ;
struct TYPE_2__ {int if_flags; } ;

/* Variables and functions */
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC2 (struct epoch_tracker) ; 
 int FUNC3 (struct lltable*,int /*<<< orphan*/ *,struct sysctl_req*) ; 

__attribute__((used)) static int
FUNC4(struct lltable *llt, struct sysctl_req *wr)
{
	struct epoch_tracker et;
	int error;

	FUNC0();

	if (llt->llt_ifp->if_flags & IFF_LOOPBACK)
		return (0);
	error = 0;

	FUNC1(et);
	error = FUNC3(llt,
	    (llt_foreach_cb_t *)llt->llt_dump_entry, wr);
	FUNC2(et);

	return (error);
}