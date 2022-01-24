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
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 () ; 
 char* FUNC3 (struct object_id const*) ; 
 scalar_t__ FUNC4 (char const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const struct object_id *oid, int verbose)
{
	int i = 0;
	const char *args[7];

	args[i++] = "read-tree";
	if (verbose)
		args[i++] = "-v";
	args[i++] = "-m";
	args[i++] = "-u";
	args[i++] = FUNC2();
	args[i++] = FUNC3(oid);
	args[i] = NULL;

	if (FUNC4(args, RUN_GIT_CMD))
		FUNC1(FUNC0("read-tree failed"));
}