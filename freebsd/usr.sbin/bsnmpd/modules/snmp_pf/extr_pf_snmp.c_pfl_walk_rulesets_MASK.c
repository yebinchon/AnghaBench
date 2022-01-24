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
typedef  scalar_t__ u_int32_t ;
struct pfioc_ruleset {char* path; scalar_t__ nr; char* name; } ;
typedef  int /*<<< orphan*/  prs ;
typedef  int /*<<< orphan*/  newpath ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGETRULESET ; 
 int /*<<< orphan*/  DIOCGETRULESETS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  PF_RESERVED_ANCHOR ; 
 int /*<<< orphan*/  FUNC0 (struct pfioc_ruleset*,int) ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pfioc_ruleset*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(const char *path)
{
	struct pfioc_ruleset prs;
	char newpath[MAXPATHLEN];
	u_int32_t nr, i;

	if (FUNC2(path))
		goto err;

	FUNC0(&prs, sizeof(prs));
	FUNC6(prs.path, path, sizeof(prs.path));
	if (FUNC1(dev, DIOCGETRULESETS, &prs)) {
		FUNC7(LOG_ERR, "pfl_walk_rulesets: ioctl(DIOCGETRULESETS): %s",
		    FUNC4(errno));
		goto err;
	}

	for (nr = prs.nr, i = 0; i < nr; i++) {
		prs.nr = i;
		if (FUNC1(dev, DIOCGETRULESET, &prs)) {
			FUNC7(LOG_ERR, "pfl_walk_rulesets: ioctl(DIOCGETRULESET):"
			    " %s", FUNC4(errno));
			goto err;
		}

		if (FUNC3(prs.name, PF_RESERVED_ANCHOR) == 0)
			continue;

		FUNC6(newpath, path, sizeof(newpath));
		if (path[0])
			FUNC5(newpath, "/", sizeof(newpath));

		FUNC5(newpath, prs.name, sizeof(newpath));
		if (FUNC8(newpath))
			goto err;
	}

	return (0);

err:
	return (-1);
}