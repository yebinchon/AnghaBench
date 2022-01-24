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
struct bisect_terms {char* term_good; char* term_bad; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (struct bisect_terms*) ; 
 scalar_t__ FUNC3 (char const*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 

__attribute__((used)) static int FUNC5(struct bisect_terms *terms, const char *option)
{
	if (FUNC2(terms))
		return FUNC1(FUNC0("no terms defined"));

	if (option == NULL) {
		FUNC4(FUNC0("Your current terms are %s for the old state\n"
			 "and %s for the new state.\n"),
		       terms->term_good, terms->term_bad);
		return 0;
	}
	if (FUNC3(option, "--term-good", "--term-old", NULL))
		FUNC4("%s\n", terms->term_good);
	else if (FUNC3(option, "--term-bad", "--term-new", NULL))
		FUNC4("%s\n", terms->term_bad);
	else
		return FUNC1(FUNC0("invalid argument %s for 'git bisect terms'.\n"
			       "Supported options are: "
			       "--term-good|--term-old and "
			       "--term-bad|--term-new."), option);

	return 0;
}