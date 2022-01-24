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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ u_long ;
struct isa_ranges {scalar_t__ size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct isa_ranges*) ; 
 scalar_t__ FUNC1 (struct isa_ranges*) ; 
 int FUNC2 (struct isa_ranges*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__,...) ; 

int
FUNC4(struct isa_ranges *range, int nrange, u_long *start,
    u_long *end, int *which)
{
	struct isa_ranges *r;
	uint64_t offs, cstart, cend;
	int i;

	for (i = 0; i < nrange; i++) {
		r = &range[i];
		cstart = FUNC0(r);
		cend = cstart + r->size - 1;
		if (*start < cstart || *start > cend)
			continue;
		if (*end < cstart || *end > cend) {
			FUNC3("ofw_isa_map_iorange: iorange crosses PCI "
			    "ranges (%#lx not in %#lx - %#lx)", *end, cstart,
			    cend);
		}
		offs = FUNC1(r);
		*start = *start + offs - cstart;
		*end  = *end + offs - cstart;
		if (which != NULL)
			*which = i;
		return (FUNC2(r));
	}
	FUNC3("ofw_isa_map_iorange: could not map range %#lx - %#lx",
	    *start, *end);
}