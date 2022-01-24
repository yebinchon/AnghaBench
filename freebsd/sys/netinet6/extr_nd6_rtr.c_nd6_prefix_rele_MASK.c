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
struct nd_prefix {int /*<<< orphan*/  ndpr_advrtrs; int /*<<< orphan*/  ndpr_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_IP6NDP ; 
 int /*<<< orphan*/  FUNC2 (struct nd_prefix*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct nd_prefix *pr)
{

	if (FUNC3(&pr->ndpr_refcnt)) {
		FUNC0(FUNC1(&pr->ndpr_advrtrs),
		    ("prefix %p has advertising routers", pr));
		FUNC2(pr, M_IP6NDP);
	}
}