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
struct object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct object*) ; 
 scalar_t__ connectivity_only ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct object* FUNC5 (int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  mark_loose_unreachable_referents ; 
 int /*<<< orphan*/  mark_packed_unreachable_referents ; 
 scalar_t__ show_dangling ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ verbose ; 
 scalar_t__ write_lost_and_found ; 

__attribute__((used)) static void FUNC8(void)
{
	int i, max;

	/* Traverse the pending reachable objects */
	FUNC7();

	/*
	 * With --connectivity-only, we won't have actually opened and marked
	 * unreachable objects with USED. Do that now to make --dangling, etc
	 * accurate.
	 */
	if (connectivity_only && (show_dangling || write_lost_and_found)) {
		/*
		 * Even though we already have a "struct object" for each of
		 * these in memory, we must not iterate over the internal
		 * object hash as we do below. Our loop would potentially
		 * resize the hash, making our iteration invalid.
		 *
		 * Instead, we'll just go back to the source list of objects,
		 * and ignore any that weren't present in our earlier
		 * traversal.
		 */
		FUNC2(mark_loose_unreachable_referents, NULL, 0);
		FUNC3(mark_packed_unreachable_referents, NULL, 0);
	}

	/* Look up all the requirements, warn about missing objects.. */
	max = FUNC6();
	if (verbose)
		FUNC4(stderr, FUNC0("Checking connectivity (%d objects)"), max);

	for (i = 0; i < max; i++) {
		struct object *obj = FUNC5(i);

		if (obj)
			FUNC1(obj);
	}
}