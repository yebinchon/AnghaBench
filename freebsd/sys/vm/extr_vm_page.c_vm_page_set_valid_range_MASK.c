#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int vm_page_bits_t ;
struct TYPE_7__ {int valid; int dirty; } ;

/* Variables and functions */
 int DEV_BSHIFT ; 
 int DEV_BSIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*,int) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

void
FUNC7(vm_page_t m, int base, int size)
{
	int endoff, frag;
	vm_page_bits_t pagebits;

	FUNC3(m);
	if (size == 0)	/* handle degenerate case */
		return;

	/*
	 * If the base is not DEV_BSIZE aligned and the valid
	 * bit is clear, we have to zero out a portion of the
	 * first block.
	 */
	if ((frag = FUNC2(base, DEV_BSIZE)) != base &&
	    (m->valid & (1 << (base >> DEV_BSHIFT))) == 0)
		FUNC1(m, frag, base - frag);

	/*
	 * If the ending offset is not DEV_BSIZE aligned and the
	 * valid bit is clear, we have to zero out a portion of
	 * the last block.
	 */
	endoff = base + size;
	if ((frag = FUNC2(endoff, DEV_BSIZE)) != endoff &&
	    (m->valid & (1 << (endoff >> DEV_BSHIFT))) == 0)
		FUNC1(m, endoff,
		    DEV_BSIZE - (endoff & (DEV_BSIZE - 1)));

	/*
	 * Assert that no previously invalid block that is now being validated
	 * is already dirty.
	 */
	FUNC0((~m->valid & FUNC4(base, size) & m->dirty) == 0,
	    ("vm_page_set_valid_range: page %p is dirty", m));

	/*
	 * Set valid bits inclusive of any overlap.
	 */
	pagebits = FUNC4(base, size);
	if (FUNC6(m))
		m->valid |= pagebits;
	else
		FUNC5(m, &m->valid, pagebits);
}