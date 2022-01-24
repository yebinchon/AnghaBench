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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  _PATH_GSS_MECH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 char* FUNC4 () ; 
 scalar_t__ FUNC5 (char) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* FUNC9 (char**,char*) ; 

__attribute__((used)) static void
FUNC10(void)
{
	FILE		*fp;
	char		buf[256];
	char		*p;
	char		*name, *oid, *lib, *kobj;

	fp = FUNC2(_PATH_GSS_MECH, "r");
	if (!fp)
		return;

	while (FUNC1(buf, sizeof(buf), fp)) {
		if (*buf == '#')
			continue;
		p = buf;
		name = FUNC9(&p, "\t\n ");
		if (p) while (FUNC5(*p)) p++;
		oid = FUNC9(&p, "\t\n ");
		if (p) while (FUNC5(*p)) p++;
		lib = FUNC9(&p, "\t\n ");
		if (p) while (FUNC5(*p)) p++;
		kobj = FUNC9(&p, "\t\n ");
		if (!name || !oid || !lib || !kobj)
			continue;

		if (FUNC8(kobj, "-")) {
			/*
			 * Attempt to load the kernel module if its
			 * not already present.
			 */
			if (FUNC7(kobj) < 0) {
				if (FUNC6(kobj) < 0) {
					FUNC3(stderr,
			"%s: can't find or load kernel module %s for %s\n",
					    FUNC4(), kobj, name);
				}
			}
		}
	}
	FUNC0(fp);
}