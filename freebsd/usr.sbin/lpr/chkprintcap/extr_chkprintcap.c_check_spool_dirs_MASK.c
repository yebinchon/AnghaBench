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
struct dirlist {int /*<<< orphan*/  printer; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 struct dirlist* FUNC0 (int /*<<< orphan*/ *) ; 
 struct dirlist* FUNC1 (struct dirlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dirlist ; 
 scalar_t__ FUNC2 (struct dirlist*,struct dirlist*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  problems ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct dirlist *dp, *dp2;

	for (dp = FUNC0(&dirlist); dp; dp = dp2) {
		dp2 = FUNC1(dp, link);

		if (dp2 != NULL && FUNC2(dp, dp2)) {
			++problems;
			if (FUNC3(dp->path, dp2->path) == 0) {
				FUNC4("%s and %s share the same spool, %s",
				      dp->printer, dp2->printer, dp->path);
			} else {
				FUNC4("%s (%s) and %s (%s) are the same "
				      "directory", dp->path, dp->printer,
				      dp2->path, dp2->printer);
			}
			continue;
		}
		/* Should probably check owners and modes here. */
	}
}