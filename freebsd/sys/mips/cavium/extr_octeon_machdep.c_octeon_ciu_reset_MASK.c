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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int OCTEON_IRQ_MBOX0 ; 
 int OCTEON_IRQ_MBOX1 ; 
 int OCTEON_PMC_IRQ ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long long) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void
FUNC6(void)
{
	uint64_t cvmctl;

	/* Disable all CIU interrupts by default */
	FUNC3(FUNC0(FUNC2()*2), 0);
	FUNC3(FUNC0(FUNC2()*2+1), 0);
	FUNC3(FUNC1(FUNC2()*2), 0);
	FUNC3(FUNC1(FUNC2()*2+1), 0);

#ifdef SMP
	/* Enable the MBOX interrupts.  */
	cvmx_write_csr(CVMX_CIU_INTX_EN0(cvmx_get_core_num()*2+1),
		       (1ull << (OCTEON_IRQ_MBOX0 - 8)) |
		       (1ull << (OCTEON_IRQ_MBOX1 - 8)));
#endif

	/* 
	 * Move the Performance Counter interrupt to OCTEON_PMC_IRQ
	 */
	cvmctl = FUNC4();
	cvmctl &= ~(7 << 7);
	cvmctl |= (OCTEON_PMC_IRQ + 2) << 7;
	FUNC5(cvmctl);
}