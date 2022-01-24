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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/ ** ipi_invlcache_counts ; 
 int /*<<< orphan*/  smp_tlb_done ; 
 int /*<<< orphan*/  smp_tlb_generation ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(void)
{
	uint32_t generation;

#ifdef COUNT_IPIS
	(*ipi_invlcache_counts[PCPU_GET(cpuid)])++;
#endif /* COUNT_IPIS */

	/*
	 * Reading the generation here allows greater parallelism
	 * since wbinvd is a serializing instruction.  Without the
	 * temporary, we'd wait for wbinvd to complete, then the read
	 * would execute, then the dependent write, which must then
	 * complete before return from interrupt.
	 */
	generation = smp_tlb_generation;
	FUNC2();
	FUNC1(smp_tlb_done, generation);
}