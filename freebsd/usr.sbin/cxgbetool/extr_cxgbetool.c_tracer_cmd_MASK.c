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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ int8_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (scalar_t__,int,char const**) ; 
 int FUNC1 () ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *,long long*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int
FUNC6(int argc, const char *argv[])
{
	long long val;
	uint8_t idx;
	char *s;

	if (argc == 0) {
		FUNC5("tracer: no arguments.");
		return (EINVAL);
	};

	/* list */
	if (FUNC3(argv[0], "list") == 0) {
		if (argc != 1)
			FUNC5("trailing arguments after \"list\" ignored.");

		return FUNC1();
	}

	/* <idx> ... */
	s = FUNC2(argv[0], NULL, &val);
	if (*s || val > 0xff) {
		FUNC5("\"%s\" is neither an index nor a tracer subcommand.",
		    argv[0]);
		return (EINVAL);
	}
	idx = (int8_t)val;

	/* <idx> disable */
	if (argc == 2 && FUNC3(argv[1], "disable") == 0)
		return FUNC4(idx, 0);

	/* <idx> enable */
	if (argc == 2 && FUNC3(argv[1], "enable") == 0)
		return FUNC4(idx, 1);

	/* <idx> ... */
	return FUNC0(idx, argc - 1, argv + 1);
}