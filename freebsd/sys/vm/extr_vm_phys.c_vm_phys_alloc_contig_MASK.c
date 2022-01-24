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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ u_long ;
struct vm_phys_seg {scalar_t__ start; int domain; scalar_t__ end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct vm_phys_seg*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int vm_phys_nsegs ; 
 struct vm_phys_seg* vm_phys_segs ; 

vm_page_t
FUNC6(int domain, u_long npages, vm_paddr_t low, vm_paddr_t high,
    u_long alignment, vm_paddr_t boundary)
{
	vm_paddr_t pa_end, pa_start;
	vm_page_t m_run;
	struct vm_phys_seg *seg;
	int segind;

	FUNC0(npages > 0, ("npages is 0"));
	FUNC0(FUNC2(alignment), ("alignment is not a power of 2"));
	FUNC0(FUNC2(boundary), ("boundary is not a power of 2"));
	FUNC4(FUNC1(domain));
	if (low >= high)
		return (NULL);
	m_run = NULL;
	for (segind = vm_phys_nsegs - 1; segind >= 0; segind--) {
		seg = &vm_phys_segs[segind];
		if (seg->start >= high || seg->domain != domain)
			continue;
		if (low >= seg->end)
			break;
		if (low <= seg->start)
			pa_start = seg->start;
		else
			pa_start = low;
		if (high < seg->end)
			pa_end = high;
		else
			pa_end = seg->end;
		if (pa_end - pa_start < FUNC3(npages))
			continue;
		m_run = FUNC5(seg, npages, low, high,
		    alignment, boundary);
		if (m_run != NULL)
			break;
	}
	return (m_run);
}