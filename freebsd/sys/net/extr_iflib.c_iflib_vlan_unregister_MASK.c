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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  if_t ;
typedef  scalar_t__ if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int IFCAP_VLAN_HWFILTER ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6(void *arg, if_t ifp, uint16_t vtag)
{
	if_ctx_t ctx = FUNC4(ifp);

	if ((void *)ctx != arg)
		return;

	if ((vtag == 0) || (vtag > 4095))
		return;

	FUNC0(ctx);
	FUNC2(ctx, vtag);
	/* Re-init to load the changes */
	if (FUNC3(ifp) & IFCAP_VLAN_HWFILTER)
		FUNC5(ctx);
	FUNC1(ctx);
}