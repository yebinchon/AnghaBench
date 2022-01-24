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
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option const FUNC1 (char,char*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option const FUNC2 () ; 
 struct option const FUNC3 (char,char*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PRUNE_PACKED_DRY_RUN ; 
 int PRUNE_PACKED_VERBOSE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int,char const**,char const*,struct option const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  prune_packed_usage ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct option const*) ; 

int FUNC9(int argc, const char **argv, const char *prefix)
{
	int opts = FUNC5(2) ? PRUNE_PACKED_VERBOSE : 0;
	const struct option prune_packed_options[] = {
		FUNC1('n', "dry-run", &opts, FUNC0("dry run"),
			PRUNE_PACKED_DRY_RUN),
		FUNC3('q', "quiet", &opts, FUNC0("be quiet"),
			   PRUNE_PACKED_VERBOSE),
		FUNC2()
	};

	argc = FUNC6(argc, argv, prefix, prune_packed_options,
			     prune_packed_usage, 0);

	if (argc > 0)
		FUNC8(FUNC4("too many arguments"),
			      prune_packed_usage,
			      prune_packed_options);

	FUNC7(opts);
	return 0;
}