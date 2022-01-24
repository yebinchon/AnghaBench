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
typedef  int u_long ;
typedef  scalar_t__ u_int ;

/* Variables and functions */
 int /*<<< orphan*/  ASI_LSU_CTL_REG ; 
 scalar_t__ CPU_IMPL_ULTRASPARCIII ; 
 int /*<<< orphan*/  KERNBASE ; 
 int LSU_DC ; 
 int LSU_IC ; 
 int LSU_PE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC3(u_int cpu_impl)
{
	u_long lsu;

	lsu = FUNC1(0, ASI_LSU_CTL_REG);
	if (cpu_impl == CPU_IMPL_ULTRASPARCIII) {
		/* Disable P$ due to US-III erratum #18. */
		lsu &= ~LSU_PE;
	}
	FUNC2(0, ASI_LSU_CTL_REG, lsu | LSU_IC | LSU_DC);
	FUNC0(KERNBASE);
}