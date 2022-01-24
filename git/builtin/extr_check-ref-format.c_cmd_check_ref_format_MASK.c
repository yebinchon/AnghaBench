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
 int REFNAME_ALLOW_ONELEVEL ; 
 int REFNAME_REFSPEC_PATTERN ; 
 int /*<<< orphan*/  builtin_check_ref_format_usage ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,int) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(int argc, const char **argv, const char *prefix)
{
	int i;
	int normalize = 0;
	int flags = 0;
	const char *refname;

	if (argc == 2 && !FUNC4(argv[1], "-h"))
		FUNC5(builtin_check_ref_format_usage);

	if (argc == 3 && !FUNC4(argv[1], "--branch"))
		return FUNC0(argv[2]);

	for (i = 1; i < argc && argv[i][0] == '-'; i++) {
		if (!FUNC4(argv[i], "--normalize") || !FUNC4(argv[i], "--print"))
			normalize = 1;
		else if (!FUNC4(argv[i], "--allow-onelevel"))
			flags |= REFNAME_ALLOW_ONELEVEL;
		else if (!FUNC4(argv[i], "--no-allow-onelevel"))
			flags &= ~REFNAME_ALLOW_ONELEVEL;
		else if (!FUNC4(argv[i], "--refspec-pattern"))
			flags |= REFNAME_REFSPEC_PATTERN;
		else
			FUNC5(builtin_check_ref_format_usage);
	}
	if (! (i == argc - 1))
		FUNC5(builtin_check_ref_format_usage);

	refname = argv[i];
	if (normalize)
		refname = FUNC2(refname);
	if (FUNC1(refname, flags))
		return 1;
	if (normalize)
		FUNC3("%s\n", refname);

	return 0;
}