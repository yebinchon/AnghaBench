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
struct argv_array {int /*<<< orphan*/  argv; } ;
struct TYPE_2__ {char* original; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(const char *revision, const char *patch_mode,
			const struct pathspec *pathspec)
{
	int status, i;
	struct argv_array argv = ARGV_ARRAY_INIT;

	FUNC1(&argv, "add--interactive");
	if (patch_mode)
		FUNC1(&argv, patch_mode);
	if (revision)
		FUNC1(&argv, revision);
	FUNC1(&argv, "--");
	for (i = 0; i < pathspec->nr; i++)
		/* pass original pathspec, to be re-parsed */
		FUNC1(&argv, pathspec->items[i].original);

	status = FUNC2(argv.argv, RUN_GIT_CMD);
	FUNC0(&argv);
	return status;
}