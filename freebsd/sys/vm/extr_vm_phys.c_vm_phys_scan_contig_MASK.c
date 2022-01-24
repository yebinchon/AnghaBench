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
struct vm_phys_seg {int domain; scalar_t__ start; scalar_t__ end; int /*<<< orphan*/ * first_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int) ; 
 int vm_phys_nsegs ; 
 struct vm_phys_seg* vm_phys_segs ; 

vm_page_t
FUNC6(int domain, u_long npages, vm_paddr_t low, vm_paddr_t high,
    u_long alignment, vm_paddr_t boundary, int options)
{
	vm_paddr_t pa_end;
	vm_page_t m_end, m_run, m_start;
	struct vm_phys_seg *seg;
	int segind;

	FUNC0(npages > 0, ("npages is 0"));
	FUNC0(FUNC3(alignment), ("alignment is not a power of 2"));
	FUNC0(FUNC3(boundary), ("boundary is not a power of 2"));
	if (low >= high)
		return (NULL);
	for (segind = 0; segind < vm_phys_nsegs; segind++) {
		seg = &vm_phys_segs[segind];
		if (seg->domain != domain)
			continue;
		if (seg->start >= high)
			break;
		if (low >= seg->end)
			continue;
		if (low <= seg->start)
			m_start = seg->first_page;
		else
			m_start = &seg->first_page[FUNC2(low - seg->start)];
		if (high < seg->end)
			pa_end = high;
		else
			pa_end = seg->end;
		if (pa_end - FUNC1(m_start) < FUNC4(npages))
			continue;
		m_end = &seg->first_page[FUNC2(pa_end - seg->start)];
		m_run = FUNC5(npages, m_start, m_end,
		    alignment, boundary, options);
		if (m_run != NULL)
			return (m_run);
	}
	return (NULL);
}