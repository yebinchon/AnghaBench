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
 int /*<<< orphan*/  EX_OSERR ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int explicit_loader ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jb ; 
 int /*<<< orphan*/  loader ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int need_reinit ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(void *arg, const char *interp_req)
{

	/*
	 * If the user specified a loader but we detected a mismatch, we should
	 * not try to pivot to a different loader on them.
	 */
	FUNC3(loader);
	if (explicit_loader == 1) {
		FUNC5("requested loader interpreter does not match guest userboot");
		FUNC1(NULL, 1);
	}
	if (interp_req == NULL || *interp_req == '\0') {
		FUNC5("guest failed to request an interpreter");
		FUNC1(NULL, 1);
	}

	if (FUNC0(&loader, "/boot/userboot_%s.so", interp_req) == -1)
		FUNC2(EX_OSERR, "malloc");
	need_reinit = 1;
	FUNC4(jb, 1);
}