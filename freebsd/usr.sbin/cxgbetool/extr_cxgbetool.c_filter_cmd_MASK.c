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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (scalar_t__,int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (scalar_t__,int,char const**,int) ; 
 int FUNC3 (int,char const**) ; 
 int FUNC4 (int) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ *,long long*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int
FUNC8(int argc, const char *argv[], int hashfilter)
{
	long long val;
	uint32_t idx;
	char *s;

	if (argc == 0) {
		FUNC7("%sfilter: no arguments.", hashfilter ? "hash" : "");
		return (EINVAL);
	};

	/* list */
	if (FUNC6(argv[0], "list") == 0) {
		if (argc != 1)
			FUNC7("trailing arguments after \"list\" ignored.");

		return FUNC4(hashfilter);
	}

	/* mode */
	if (argc == 1 && FUNC6(argv[0], "mode") == 0)
		return FUNC1(hashfilter);

	/* mode <mode> */
	if (!hashfilter && FUNC6(argv[0], "mode") == 0)
		return FUNC3(argc - 1, argv + 1);

	/* <idx> ... */
	s = FUNC5(argv[0], NULL, &val);
	if (*s || val < 0 || val > 0xffffffffU) {
		if (hashfilter) {
			/*
			 * No numeric index means this must be a request to
			 * create a new hashfilter and we are already at the
			 * paramter/value list.
			 */
			idx = (uint32_t) -1;
			goto setf;
		}
		FUNC7("\"%s\" is neither an index nor a filter subcommand.",
		    argv[0]);
		return (EINVAL);
	}
	idx = (uint32_t) val;

	/* <idx> delete|clear [prio 0|1] */
	if ((argc == 2 || argc == 4) &&
	    (FUNC6(argv[1], "delete") == 0 || FUNC6(argv[1], "clear") == 0)) {
		int prio = 0;

		if (argc == 4) {
			if (hashfilter) {
				FUNC7("stray arguments after \"%s\".", argv[1]);
				return (EINVAL);
			}

			if (FUNC6(argv[2], "prio") != 0) {
				FUNC7("\"prio\" is the only valid keyword "
				    "after \"%s\", found \"%s\" instead.",
				    argv[1], argv[2]);
				return (EINVAL);
			}

			s = FUNC5(argv[3], NULL, &val);
			if (*s || val < 0 || val > 1) {
				FUNC7("%s \"%s\"; must be \"0\" or \"1\".",
				    argv[2], argv[3]);
				return (EINVAL);
			}
			prio = (int)val;
		}
		return FUNC0(idx, prio, hashfilter);
	}

	/* skip <idx> */
	argc--;
	argv++;

setf:
	/* [<param> <val>] ... */
	return FUNC2(idx, argc, argv, hashfilter);
}