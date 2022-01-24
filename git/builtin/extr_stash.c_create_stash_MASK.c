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
struct stash_info {int /*<<< orphan*/  w_commit; } ;
struct pathspec {int dummy; } ;
typedef  int /*<<< orphan*/  ps ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct pathspec*) ; 
 int FUNC1 (struct pathspec*,struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stash_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pathspec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int,char const**,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

__attribute__((used)) static int FUNC7(int argc, const char **argv, const char *prefix)
{
	int ret = 0;
	struct strbuf stash_msg_buf = STRBUF_INIT;
	struct stash_info info;
	struct pathspec ps;

	/* Starting with argv[1], since argv[0] is "create" */
	FUNC5(&stash_msg_buf, argc - 1, ++argv, ' ');

	FUNC2(&ps, 0, sizeof(ps));
	if (!FUNC0(&ps))
		return 0;

	ret = FUNC1(&ps, &stash_msg_buf, 0, 0, &info,
			      NULL, 0);
	if (!ret)
		FUNC4("%s", FUNC3(&info.w_commit));

	FUNC6(&stash_msg_buf);
	return ret;
}