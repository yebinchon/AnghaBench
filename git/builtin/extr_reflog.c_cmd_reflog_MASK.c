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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char const**,char const*) ; 
 int FUNC2 (int,char const**,char const*) ; 
 int FUNC3 (int,char const**,char const*) ; 
 int FUNC4 (int,char const**,char const*) ; 
 int /*<<< orphan*/  reflog_usage ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(int argc, const char **argv, const char *prefix)
{
	if (argc > 1 && !FUNC5(argv[1], "-h"))
		FUNC6(FUNC0(reflog_usage));

	/* With no command, we default to showing it. */
	if (argc < 2 || *argv[1] == '-')
		return FUNC1(argc, argv, prefix);

	if (!FUNC5(argv[1], "show"))
		return FUNC1(argc - 1, argv + 1, prefix);

	if (!FUNC5(argv[1], "expire"))
		return FUNC4(argc - 1, argv + 1, prefix);

	if (!FUNC5(argv[1], "delete"))
		return FUNC2(argc - 1, argv + 1, prefix);

	if (!FUNC5(argv[1], "exists"))
		return FUNC3(argc - 1, argv + 1, prefix);

	return FUNC1(argc, argv, prefix);
}