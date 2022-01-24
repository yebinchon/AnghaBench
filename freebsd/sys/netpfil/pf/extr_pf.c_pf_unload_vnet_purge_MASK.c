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
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  pf_hashmask ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(void)
{

	/*
	 * To cleanse up all kifs and rules we need
	 * two runs: first one clears reference flags,
	 * then pf_purge_expired_states() doesn't
	 * raise them, and then second run frees.
	 */
	FUNC3();
	FUNC4();

	/*
	 * Now purge everything.
	 */
	FUNC1(0, pf_hashmask);
	FUNC2(UINT_MAX);
	FUNC0();

	/*
	 * Now all kifs & rules should be unreferenced,
	 * thus should be successfully freed.
	 */
	FUNC3();
	FUNC4();
}