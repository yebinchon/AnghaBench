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
struct utmpx {int /*<<< orphan*/  ut_id; int /*<<< orphan*/  ut_tv; int /*<<< orphan*/  ut_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEAD_PROCESS ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct utmpx*) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC7(char *id[])
{
	struct utmpx utx = { .ut_type = DEAD_PROCESS };
	size_t len;
	int ret = 0;

	(void)FUNC2(&utx.ut_tv, NULL);
	for (; *id != NULL; id++) {
		len = FUNC5(*id);
		if (len <= sizeof(utx.ut_id)) {
			/* Identifier as string. */
			FUNC6(utx.ut_id, *id, sizeof(utx.ut_id));
		} else if (len != sizeof(utx.ut_id) * 2 ||
		    FUNC0(*id, utx.ut_id, sizeof(utx.ut_id)) != 0) {
			/* Also not hexadecimal. */
			FUNC1(stderr, "%s: Invalid identifier format\n", *id);
			ret = 1;
			continue;
		}

		/* Zap the entry. */
		if (FUNC4(&utx) == NULL) {
			FUNC3(*id);
			ret = 1;
		}
	}
	return (ret);
}