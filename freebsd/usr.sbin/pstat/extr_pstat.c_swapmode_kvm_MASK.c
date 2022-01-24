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
struct kvm_swap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWIF_DEV_PREFIX ; 
 int /*<<< orphan*/  kd ; 
 int FUNC0 (int /*<<< orphan*/ ,struct kvm_swap*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_swap*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct kvm_swap kswap[16];
	int i, n;

	n = FUNC0(kd, kswap, sizeof kswap / sizeof kswap[0],
	    SWIF_DEV_PREFIX);

	FUNC2();
	for (i = 0; i < n; ++i)
		FUNC1(&kswap[i]);
	FUNC3();
}