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
struct nd_pfxrouter {int /*<<< orphan*/  router; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nd_pfxrouter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IP6NDP ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_pfxrouter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfr_entry ; 

__attribute__((used)) static void
FUNC4(struct nd_pfxrouter *pfr)
{

	FUNC1();

	FUNC0(pfr, pfr_entry);
	FUNC2(pfr->router);
	FUNC3(pfr, M_IP6NDP);
}