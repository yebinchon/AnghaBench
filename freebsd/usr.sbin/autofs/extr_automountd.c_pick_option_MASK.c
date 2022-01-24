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
 char* FUNC0 (int,int) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*,char const*,int) ; 
 char* FUNC7 (char**,char*) ; 

__attribute__((used)) static char *
FUNC8(const char *option, char **optionsp)
{
	char *tofree, *pair, *newoptions;
	char *picked = NULL;
	bool first = true;

	tofree = *optionsp;

	newoptions = FUNC0(1, FUNC5(*optionsp) + 1);
	if (newoptions == NULL)
		FUNC3(1, "calloc");

	while ((pair = FUNC7(optionsp, ",")) != NULL) {
		/*
		 * XXX: strncasecmp(3) perhaps?
		 */
		if (FUNC6(pair, option, FUNC5(option)) == 0) {
			picked = FUNC1(pair + FUNC5(option));
		} else {
			if (first == false)
				FUNC4(newoptions, ",");
			else
				first = false;
			FUNC4(newoptions, pair);
		}
	}

	FUNC2(tofree);
	*optionsp = newoptions;

	return (picked);
}