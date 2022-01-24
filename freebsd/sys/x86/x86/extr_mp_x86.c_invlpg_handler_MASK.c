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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** ipi_invlpg_counts ; 
 scalar_t__ kernel_pmap ; 
 int /*<<< orphan*/  smp_tlb_addr1 ; 
 int /*<<< orphan*/  smp_tlb_done ; 
 int /*<<< orphan*/  smp_tlb_generation ; 
 scalar_t__ smp_tlb_pmap ; 
 int /*<<< orphan*/ * xhits_pg ; 

void
FUNC3(void)
{
	uint32_t generation;

#ifdef COUNT_XINVLTLB_HITS
	xhits_pg[PCPU_GET(cpuid)]++;
#endif /* COUNT_XINVLTLB_HITS */
#ifdef COUNT_IPIS
	(*ipi_invlpg_counts[PCPU_GET(cpuid)])++;
#endif /* COUNT_IPIS */

	generation = smp_tlb_generation;	/* Overlap with serialization */
#ifdef __i386__
	if (smp_tlb_pmap == kernel_pmap)
#endif
		FUNC2(smp_tlb_addr1);
	FUNC1(smp_tlb_done, generation);
}