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
struct dirent {char const* d_name; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  CONFFILE_REPO ; 
 int /*<<< orphan*/  F_OK ; 
 int MAXPATHLEN ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static int
FUNC8(const char *repodir)
{
	struct dirent *ent;
	DIR *d;
	char *p;
	size_t n;
	char path[MAXPATHLEN];
	int ret;

	ret = 0;

	if ((d = FUNC2(repodir)) == NULL)
		return (1);

	while ((ent = FUNC4(d))) {
		/* Trim out 'repos'. */
		if ((n = FUNC7(ent->d_name)) <= 5)
			continue;
		p = &ent->d_name[n - 5];
		if (FUNC6(p, ".conf") == 0) {
			FUNC5(path, sizeof(path), "%s%s%s",
			    repodir,
			    repodir[FUNC7(repodir) - 1] == '/' ? "" : "/",
			    ent->d_name);
			if (FUNC0(path, F_OK) == 0 &&
			    FUNC3(path, CONFFILE_REPO)) {
				ret = 1;
				goto cleanup;
			}
		}
	}

cleanup:
	FUNC1(d);

	return (ret);
}