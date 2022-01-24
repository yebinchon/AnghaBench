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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  current_bad_oid ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  good_revs ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* term_bad ; 
 char* term_good ; 

__attribute__((used)) static void FUNC7(void)
{
	if (FUNC3(current_bad_oid)) {
		char *bad_hex = FUNC5(current_bad_oid);
		char *good_hex = FUNC4(&good_revs, ' ');
		if (!FUNC6(term_bad, "bad") && !FUNC6(term_good, "good")) {
			FUNC2(stderr, FUNC0("The merge base %s is bad.\n"
				"This means the bug has been fixed "
				"between %s and [%s].\n"),
				bad_hex, bad_hex, good_hex);
		} else if (!FUNC6(term_bad, "new") && !FUNC6(term_good, "old")) {
			FUNC2(stderr, FUNC0("The merge base %s is new.\n"
				"The property has changed "
				"between %s and [%s].\n"),
				bad_hex, bad_hex, good_hex);
		} else {
			FUNC2(stderr, FUNC0("The merge base %s is %s.\n"
				"This means the first '%s' commit is "
				"between %s and [%s].\n"),
				bad_hex, term_bad, term_good, bad_hex, good_hex);
		}
		FUNC1(3);
	}

	FUNC2(stderr, FUNC0("Some %s revs are not ancestors of the %s rev.\n"
		"git bisect cannot work properly in this case.\n"
		"Maybe you mistook %s and %s revs?\n"),
		term_good, term_bad, term_good, term_bad);
	FUNC1(1);
}