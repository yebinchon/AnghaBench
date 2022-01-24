#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pathspec {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {int /*<<< orphan*/  match; } ;

/* Variables and functions */
 int /*<<< orphan*/  REFRESH_IN_PORCELAIN ; 
 int /*<<< orphan*/  REFRESH_QUIET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pathspec const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_index ; 
 char* FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(int verbose, const struct pathspec *pathspec)
{
	char *seen;
	int i;

	seen = FUNC4(pathspec->nr, 1);
	FUNC3(&the_index, verbose ? REFRESH_IN_PORCELAIN : REFRESH_QUIET,
		      pathspec, seen, FUNC0("Unstaged changes after refreshing the index:"));
	for (i = 0; i < pathspec->nr; i++) {
		if (!seen[i])
			FUNC1(FUNC0("pathspec '%s' did not match any files"),
			    pathspec->items[i].match);
	}
	FUNC2(seen);
}