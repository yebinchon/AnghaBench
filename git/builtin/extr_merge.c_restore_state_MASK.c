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
struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REFRESH_QUIET ; 
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (struct object_id const*) ; 
 char* FUNC1 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(const struct object_id *head,
			  const struct object_id *stash)
{
	struct strbuf sb = STRBUF_INIT;
	const char *args[] = { "stash", "apply", NULL, NULL };

	if (FUNC0(stash))
		return;

	FUNC3(head, 1);

	args[2] = FUNC1(stash);

	/*
	 * It is OK to ignore error here, for example when there was
	 * nothing to restore.
	 */
	FUNC4(args, RUN_GIT_CMD);

	FUNC5(&sb);
	FUNC2(REFRESH_QUIET);
}