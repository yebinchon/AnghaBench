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
struct passwd {scalar_t__ pw_uid; } ;

/* Variables and functions */
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  MAP_ANON ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  NOBODY ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 struct passwd* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

int
FUNC9(int argc, char *argv[])
{
	struct passwd *pwd;
	int pagesize;
	char *page;

	if (FUNC1() != 0)
		FUNC0(-1, "mlock must run as root");

	errno = 0;
	pwd = FUNC3(NOBODY);
	if (pwd == NULL && errno == 0)
		FUNC0(-1, "getpwnam: user \"%s\" not found", NOBODY);
	if (pwd == NULL)
		FUNC0(-1, "getpwnam: %s", FUNC8(errno));
	if (pwd->pw_uid == 0)
		FUNC0(-1, "getpwnam: user \"%s\" has uid 0", NOBODY);

	pagesize = FUNC2();
	page = FUNC5(NULL, pagesize, PROT_READ|PROT_WRITE, MAP_ANON, -1, 0);
	if (page == MAP_FAILED)
		FUNC0(-1, "mmap: %s", FUNC8(errno));

	if (FUNC4(page, pagesize) < 0)
		FUNC0(-1, "mlock privileged: %s", FUNC8(errno));

	if (FUNC6(page, pagesize) < 0)
		FUNC0(-1, "munlock privileged: %s", FUNC8(errno));

	if (FUNC7(pwd->pw_uid) < 0)
		FUNC0(-1, "seteuid: %s", FUNC8(errno));

	if (FUNC4(page, pagesize) == 0)
		FUNC0(-1, "mlock unprivileged: succeeded but shouldn't have");
	if (errno != EPERM)
		FUNC0(-1, "mlock unprivileged: %s", FUNC8(errno));

	if (FUNC6(page, pagesize) == 0)
		FUNC0(-1, "munlock unprivileged: succeeded but shouldn't have");
	if (errno != EPERM)
		FUNC0(-1, "munlock unprivileged: %s", FUNC8(errno));

	return (0);
}