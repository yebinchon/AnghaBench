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
struct child_process {int git_cmd; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (struct object_id*) ; 
 int FUNC3 (struct child_process*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct strbuf *out, struct object_id *w_commit)
{
	struct child_process cp = CHILD_PROCESS_INIT;
	const char *w_commit_hex = FUNC2(w_commit);

	/*
	 * Diff-tree would not be very hard to replace with a native function,
	 * however it should be done together with apply_cached.
	 */
	cp.git_cmd = 1;
	FUNC1(&cp.args, "diff-tree", "--binary", NULL);
	FUNC0(&cp.args, "%s^2^..%s^2", w_commit_hex, w_commit_hex);

	return FUNC3(&cp, NULL, 0, out, 0, NULL, 0);
}