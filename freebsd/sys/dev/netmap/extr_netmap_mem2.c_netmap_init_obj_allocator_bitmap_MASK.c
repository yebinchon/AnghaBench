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
typedef  int u_int ;
struct netmap_obj_pool {unsigned int* bitmap; int objtotal; int bitmap_slots; int objfree; int /*<<< orphan*/  name; scalar_t__ invalid_bitmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int NM_DEBUG_MEM ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 int netmap_debug ; 
 scalar_t__ netmap_verbose ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 unsigned int* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct netmap_obj_pool *p)
{
	u_int n, j;

	if (p->bitmap == NULL) {
		/* Allocate the bitmap */
		n = (p->objtotal + 31) / 32;
		p->bitmap = FUNC2(sizeof(p->bitmap[0]) * n);
		if (p->bitmap == NULL) {
			FUNC3("Unable to create bitmap (%d entries) for allocator '%s'", (int)n,
			    p->name);
			return ENOMEM;
		}
		p->bitmap_slots = n;
	} else {
		FUNC0(p->bitmap, 0, p->bitmap_slots * sizeof(p->bitmap[0]));
	}

	p->objfree = 0;
	/*
	 * Set all the bits in the bitmap that have
	 * corresponding buffers to 1 to indicate they are
	 * free.
	 */
	for (j = 0; j < p->objtotal; j++) {
		if (p->invalid_bitmap && FUNC1(p->invalid_bitmap, j)) {
			if (netmap_debug & NM_DEBUG_MEM)
				FUNC4("skipping %s %d", p->name, j);
			continue;
		}
		p->bitmap[ (j>>5) ] |=  ( 1U << (j & 31U) );
		p->objfree++;
	}

	if (netmap_verbose)
		FUNC4("%s free %u", p->name, p->objfree);
	if (p->objfree == 0) {
		if (netmap_verbose)
			FUNC3("%s: no objects available", p->name);
		return ENOMEM;
	}

	return 0;
}