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
struct object_id {int dummy; } ;

/* Variables and functions */
 int MAX_REVS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  append_matching_ref ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,struct object_id*) ; 
 char const* match_ref_pattern ; 
 int /*<<< orphan*/  match_ref_slash ; 
 int ref_name_cnt ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (char const*,char) ; 

__attribute__((used)) static void FUNC9(const char *av)
{
	struct object_id revkey;
	if (!FUNC6(av, &revkey)) {
		FUNC1(av, &revkey, 0);
		return;
	}
	if (FUNC8(av, '*') || FUNC8(av, '?') || FUNC8(av, '[')) {
		/* glob style match */
		int saved_matches = ref_name_cnt;

		match_ref_pattern = av;
		match_ref_slash = FUNC2(av);
		FUNC5(append_matching_ref, NULL);
		if (saved_matches == ref_name_cnt &&
		    ref_name_cnt < MAX_REVS)
			FUNC4(FUNC0("no matching refs with %s"), av);
		FUNC7(saved_matches, ref_name_cnt);
		return;
	}
	FUNC3("bad sha1 reference %s", av);
}