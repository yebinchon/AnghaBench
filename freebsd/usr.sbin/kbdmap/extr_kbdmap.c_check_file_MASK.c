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
 int /*<<< orphan*/  R_OK ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  dir ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int
FUNC4(const char *keym)
{
	int status = 0;

	if (FUNC0(keym, R_OK) == -1) {
		char *fn;
		FUNC1(&fn, "%d/%s", dir, keym);
		if (FUNC0(fn, R_OK) == -1) {
			if (verbose)
				FUNC2(stderr, "%s not found!\n", fn);
			status = -1;
		}
		FUNC3(fn);
	} else {
		if (verbose)
			FUNC2(stderr, "No read permission for %s!\n", keym);
		status = -1;
	}

	return status;
}