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
struct pcpu {scalar_t__ pc_dynamic; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPCPU_BYTES ; 
 scalar_t__ DPCPU_START ; 
 scalar_t__* dpcpu_off ; 
 int /*<<< orphan*/  FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 struct pcpu* FUNC1 (int) ; 

void
FUNC2(void *dpcpu, int cpuid)
{
	struct pcpu *pcpu;

	pcpu = FUNC1(cpuid);
	pcpu->pc_dynamic = (uintptr_t)dpcpu - DPCPU_START;

	/*
	 * Initialize defaults from our linker section.
	 */
	FUNC0(dpcpu, (void *)DPCPU_START, DPCPU_BYTES);

	/*
	 * Place it in the global pcpu offset array.
	 */
	dpcpu_off[cpuid] = pcpu->pc_dynamic;
}