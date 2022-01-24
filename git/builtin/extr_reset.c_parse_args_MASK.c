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
struct pathspec {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int PATHSPEC_PREFER_FULL ; 
 int PATHSPEC_PREFIX_ORIGIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct pathspec*,int /*<<< orphan*/ ,int,char const*,char const**) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 

__attribute__((used)) static void FUNC9(struct pathspec *pathspec,
		       const char **argv, const char *prefix,
		       int patch_mode,
		       const char **rev_ret)
{
	const char *rev = "HEAD";
	struct object_id unused;
	/*
	 * Possible arguments are:
	 *
	 * git reset [-opts] [<rev>]
	 * git reset [-opts] <tree> [<paths>...]
	 * git reset [-opts] <tree> -- [<paths>...]
	 * git reset [-opts] -- [<paths>...]
	 * git reset [-opts] <paths>...
	 *
	 * At this point, argv points immediately after [-opts].
	 */

	if (argv[0]) {
		if (!FUNC6(argv[0], "--")) {
			argv++; /* reset to HEAD, possibly with paths */
		} else if (argv[1] && !FUNC6(argv[1], "--")) {
			rev = argv[0];
			argv += 2;
		}
		/*
		 * Otherwise, argv[0] could be either <rev> or <paths> and
		 * has to be unambiguous. If there is a single argument, it
		 * can not be a tree
		 */
		else if ((!argv[1] && !FUNC2(argv[0], &unused)) ||
			 (argv[1] && !FUNC3(argv[0], &unused))) {
			/*
			 * Ok, argv[0] looks like a commit/tree; it should not
			 * be a filename.
			 */
			FUNC8(prefix, argv[0]);
			rev = *argv++;
		} else {
			/* Otherwise we treat this as a filename */
			FUNC7(prefix, argv[0], 1);
		}
	}
	*rev_ret = rev;

	if (FUNC5() < 0)
		FUNC1(FUNC0("index file corrupt"));

	FUNC4(pathspec, 0,
		       PATHSPEC_PREFER_FULL |
		       (patch_mode ? PATHSPEC_PREFIX_ORIGIN : 0),
		       prefix, argv);
}