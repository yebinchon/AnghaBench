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
struct bisect_terms {char* term_bad; char* term_good; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct bisect_terms*,char*,char*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int FUNC7 (char*,char*) ; 

__attribute__((used)) static int FUNC8(struct bisect_terms *terms, const char *cmd)
{
	int has_term_file = !FUNC3(FUNC2());

	if (FUNC4(cmd, "skip", "start", "terms", NULL))
		return 0;

	if (has_term_file && FUNC6(cmd, terms->term_bad) &&
	    FUNC6(cmd, terms->term_good))
		return FUNC1(FUNC0("Invalid command: you're currently in a "
				"%s/%s bisect"), terms->term_bad,
				terms->term_good);

	if (!has_term_file) {
		if (FUNC4(cmd, "bad", "good", NULL)) {
			FUNC5(terms, "bad", "good");
			return FUNC7(terms->term_bad, terms->term_good);
		}
		if (FUNC4(cmd, "new", "old", NULL)) {
			FUNC5(terms, "new", "old");
			return FUNC7(terms->term_bad, terms->term_good);
		}
	}

	return 0;
}