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
 int RV_NOTFOUND ; 
 int RV_OK ; 
 int /*<<< orphan*/  SHELLSPRINT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int
FUNC5(int argc, char *argv[])
{
	const char	*sh;
	int		i, rv;

	FUNC0(argc > 1);
	FUNC0(argv != NULL);

#define SHELLSPRINT	printf("%s\n", sh)

	FUNC3();
	rv = RV_OK;
	if (argc == 2) {
		while ((sh = FUNC2()) != NULL)
			SHELLSPRINT;
	} else {
		for (i = 2; i < argc; i++) {
			FUNC3();
			while ((sh = FUNC2()) != NULL) {
				if (FUNC4(sh, argv[i]) == 0) {
					SHELLSPRINT;
					break;
				}
			}
			if (sh == NULL) {
				rv = RV_NOTFOUND;
				break;
			}
		}
	}
	FUNC1();
	return rv;
}