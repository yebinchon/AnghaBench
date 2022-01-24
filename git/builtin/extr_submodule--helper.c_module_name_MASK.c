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
struct submodule {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 struct submodule* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(int argc, const char **argv, const char *prefix)
{
	const struct submodule *sub;

	if (argc != 2)
		FUNC4(FUNC0("git submodule--helper name <path>"));

	sub = FUNC3(the_repository, &null_oid, argv[1]);

	if (!sub)
		FUNC1(FUNC0("no submodule mapping found in .gitmodules for path '%s'"),
		    argv[1]);

	FUNC2("%s\n", sub->name);

	return 0;
}