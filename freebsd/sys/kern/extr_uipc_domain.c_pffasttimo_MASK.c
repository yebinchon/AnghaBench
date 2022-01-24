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
struct protosw {int /*<<< orphan*/  (* pr_fasttimo ) () ;} ;
struct epoch_tracker {int dummy; } ;
struct domain {struct protosw* dom_protoswNPROTOSW; struct protosw* dom_protosw; struct domain* dom_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void (*) (void*),int /*<<< orphan*/ *) ; 
 struct domain* domains ; 
 int hz ; 
 int /*<<< orphan*/  pffast_callout ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct epoch_tracker et;
	struct domain *dp;
	struct protosw *pr;

	FUNC0(et);
	for (dp = domains; dp; dp = dp->dom_next)
		for (pr = dp->dom_protosw; pr < dp->dom_protoswNPROTOSW; pr++)
			if (pr->pr_fasttimo)
				(*pr->pr_fasttimo)();
	FUNC1(et);
	FUNC2(&pffast_callout, hz/5, pffasttimo, NULL);
}