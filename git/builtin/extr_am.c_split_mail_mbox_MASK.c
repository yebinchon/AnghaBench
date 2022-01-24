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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct child_process {int git_cmd; int /*<<< orphan*/  args; } ;
struct am_state {int cur; int /*<<< orphan*/  last; int /*<<< orphan*/  dir; int /*<<< orphan*/  prec; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC3 (struct child_process*,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct am_state *state, const char **paths,
				int keep_cr, int mboxrd)
{
	struct child_process cp = CHILD_PROCESS_INIT;
	struct strbuf last = STRBUF_INIT;
	int ret;

	cp.git_cmd = 1;
	FUNC0(&cp.args, "mailsplit");
	FUNC1(&cp.args, "-d%d", state->prec);
	FUNC1(&cp.args, "-o%s", state->dir);
	FUNC0(&cp.args, "-b");
	if (keep_cr)
		FUNC0(&cp.args, "--keep-cr");
	if (mboxrd)
		FUNC0(&cp.args, "--mboxrd");
	FUNC0(&cp.args, "--");
	FUNC2(&cp.args, paths);

	ret = FUNC3(&cp, &last, 8);
	if (ret)
		goto exit;

	state->cur = 1;
	state->last = FUNC5(last.buf, NULL, 10);

exit:
	FUNC4(&last);
	return ret ? -1 : 0;
}