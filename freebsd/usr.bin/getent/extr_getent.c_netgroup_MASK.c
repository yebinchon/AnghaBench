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
 int RV_NOENUM ; 
 int RV_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char**,char**,char**) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC9(int argc, char *argv[])
{
	char		*host, *user, *domain;
	int		first;
	int		rv, i;

	FUNC1(argc > 1);
	FUNC1(argv != NULL);

#define NETGROUPPRINT(s)	(((s) != NULL) ? (s) : "")

	rv = RV_OK;
	if (argc == 2) {
		FUNC3(stderr, "Enumeration not supported on netgroup\n");
		rv = RV_NOENUM;
	} else {
		for (i = 2; i < argc; i++) {
			FUNC8(argv[i]);
			first = 1;
			while (FUNC5(&host, &user, &domain) != 0) {
				if (first) {
					first = 0;
					(void)FUNC4(argv[i], stdout);
				}
				(void)FUNC6(" (%s,%s,%s)",
				    NETGROUPPRINT(host),
				    NETGROUPPRINT(user),
				    NETGROUPPRINT(domain));
			}
			if (!first)
				(void)FUNC7('\n');
			FUNC2();
		}
	}
	return rv;
}