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
struct path_pattern {int dummy; } ;
struct dir_struct {int dummy; } ;
struct TYPE_2__ {char* match; int /*<<< orphan*/  original; } ;

/* Variables and functions */
 int DT_UNKNOWN ; 
 int PATHSPEC_ALL_MAGIC ; 
 int PATHSPEC_FROMTOP ; 
 int PATHSPEC_KEEP_ORDER ; 
 int PATHSPEC_SYMLINK_LEADING_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pathspec*) ; 
 char* FUNC1 (struct pathspec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct path_pattern* FUNC4 (struct dir_struct*,int /*<<< orphan*/ *,char const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct path_pattern*) ; 
 int /*<<< orphan*/  FUNC6 (struct pathspec*,int,int,char const*,char const**) ; 
 int /*<<< orphan*/  quiet ; 
 scalar_t__ show_non_matching ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  the_index ; 

__attribute__((used)) static int FUNC7(struct dir_struct *dir,
			const char *prefix, int argc, const char **argv)
{
	const char *full_path;
	char *seen;
	int num_ignored = 0, i;
	struct path_pattern *pattern;
	struct pathspec pathspec;

	if (!argc) {
		if (!quiet)
			FUNC2(stderr, "no pathspec given.\n");
		return 0;
	}

	/*
	 * check-ignore just needs paths. Magic beyond :/ is really
	 * irrelevant.
	 */
	FUNC6(&pathspec,
		       PATHSPEC_ALL_MAGIC & ~PATHSPEC_FROMTOP,
		       PATHSPEC_SYMLINK_LEADING_PATH |
		       PATHSPEC_KEEP_ORDER,
		       prefix, argv);

	FUNC0(&the_index, &pathspec);

	/*
	 * look for pathspecs matching entries in the index, since these
	 * should not be ignored, in order to be consistent with
	 * 'git status', 'git add' etc.
	 */
	seen = FUNC1(&pathspec, &the_index);
	for (i = 0; i < pathspec.nr; i++) {
		full_path = pathspec.items[i].match;
		pattern = NULL;
		if (!seen[i]) {
			int dtype = DT_UNKNOWN;
			pattern = FUNC4(dir, &the_index,
							full_path, &dtype);
		}
		if (!quiet && (pattern || show_non_matching))
			FUNC5(pathspec.items[i].original, pattern);
		if (pattern)
			num_ignored++;
	}
	FUNC3(seen);

	return num_ignored;
}