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
typedef  int /*<<< orphan*/  uintmax_t ;
struct vm_phys_fictitious_seg {scalar_t__ end; scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vm_phys_fictitious_seg*,struct vm_phys_fictitious_seg*) ; 

__attribute__((used)) static int
FUNC3(struct vm_phys_fictitious_seg *p1,
    struct vm_phys_fictitious_seg *p2)
{

	/* Check if this is a search for a page */
	if (p1->end == 0)
		return (FUNC2(p1, p2));

	FUNC0(p2->end != 0,
    ("Invalid range passed as second parameter to vm fictitious comparison"));

	/* Searching to add a new range */
	if (p1->end <= p2->start)
		return (-1);
	if (p1->start >= p2->end)
		return (1);

	FUNC1("Trying to add overlapping vm fictitious ranges:\n"
	    "[%#jx:%#jx] and [%#jx:%#jx]", (uintmax_t)p1->start,
	    (uintmax_t)p1->end, (uintmax_t)p2->start, (uintmax_t)p2->end);
}