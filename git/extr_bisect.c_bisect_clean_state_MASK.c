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
struct string_list {int strdup_strings; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_NO_DEREF ; 
 struct string_list STRING_LIST_INIT_NODUP ; 
 int FUNC0 (char*,struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  mark_for_removal ; 
 int /*<<< orphan*/  FUNC10 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int FUNC14(void)
{
	int result = 0;

	/* There may be some refs packed during bisection */
	struct string_list refs_for_removal = STRING_LIST_INIT_NODUP;
	FUNC1("refs/bisect", mark_for_removal, (void *) &refs_for_removal);
	FUNC10(&refs_for_removal, FUNC13("BISECT_HEAD"));
	result = FUNC0("bisect: remove", &refs_for_removal, REF_NO_DEREF);
	refs_for_removal.strdup_strings = 1;
	FUNC11(&refs_for_removal, 0);
	FUNC12(FUNC3());
	FUNC12(FUNC2());
	FUNC12(FUNC4());
	FUNC12(FUNC5());
	FUNC12(FUNC6());
	FUNC12(FUNC8());
	/* Cleanup head-name if it got left by an old version of git-bisect */
	FUNC12(FUNC9());
	/*
	 * Cleanup BISECT_START last to support the --no-checkout option
	 * introduced in the commit 4796e823a.
	 */
	FUNC12(FUNC7());

	return result;
}