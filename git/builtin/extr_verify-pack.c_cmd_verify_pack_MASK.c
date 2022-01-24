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
 struct option const FUNC1 (char,char*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option const FUNC2 () ; 
 int /*<<< orphan*/  VERIFY_PACK_STAT_ONLY ; 
 int /*<<< orphan*/  VERIFY_PACK_VERBOSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int FUNC4 (int,char const**,char const*,struct option const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct option const*) ; 
 scalar_t__ FUNC6 (char const*,unsigned int) ; 
 int /*<<< orphan*/  verify_pack_usage ; 

int FUNC7(int argc, const char **argv, const char *prefix)
{
	int err = 0;
	unsigned int flags = 0;
	int i;
	const struct option verify_pack_options[] = {
		FUNC1('v', "verbose", &flags, FUNC0("verbose"),
			VERIFY_PACK_VERBOSE),
		FUNC1('s', "stat-only", &flags, FUNC0("show statistics only"),
			VERIFY_PACK_STAT_ONLY),
		FUNC2()
	};

	FUNC3(git_default_config, NULL);
	argc = FUNC4(argc, argv, prefix, verify_pack_options,
			     verify_pack_usage, 0);
	if (argc < 1)
		FUNC5(verify_pack_usage, verify_pack_options);
	for (i = 0; i < argc; i++) {
		if (FUNC6(argv[i], flags))
			err = 1;
	}

	return err;
}