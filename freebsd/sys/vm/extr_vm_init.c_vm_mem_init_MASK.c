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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  virtual_avail ; 
 int /*<<< orphan*/  virtual_end ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void
FUNC14(void *dummy)
{

	/*
	 * Initialize static domainsets, used by various allocators.
	 */
	FUNC0();

	/*
	 * Initialize resident memory structures.  From here on, all physical
	 * memory is accounted for, and we use only virtual addresses.
	 */
	FUNC12();
	virtual_avail = FUNC9(virtual_avail);

	/*
	 * Set an initial domain policy for thread0 so that allocations
	 * can work.
	 */
	FUNC1();

#ifdef	UMA_MD_SMALL_ALLOC
	/* Announce page availability to UMA. */
	uma_startup1();
#endif
	/*
	 * Initialize other VM packages
	 */
	FUNC13();
	FUNC8();
	FUNC7();
	FUNC2(virtual_avail, virtual_end);

#ifndef	UMA_MD_SMALL_ALLOC
	/* Set up radix zone to use noobj_alloc. */
	FUNC11();
#endif
	/* Announce full page availability to UMA. */
	FUNC6();
	FUNC3();
	FUNC4();
	FUNC10();
}