#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int recursive; } ;
struct path_exists_context {TYPE_1__ pathspec; struct archiver_args* args; } ;
struct archiver_args {int /*<<< orphan*/  tree; int /*<<< orphan*/  repo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,struct path_exists_context*) ; 
 int /*<<< orphan*/  reject_entry ; 

__attribute__((used)) static int FUNC3(struct archiver_args *args, const char *path)
{
	const char *paths[] = { path, NULL };
	struct path_exists_context ctx;
	int ret;

	ctx.args = args;
	FUNC1(&ctx.pathspec, 0, 0, "", paths);
	ctx.pathspec.recursive = 1;
	ret = FUNC2(args->repo, args->tree, "",
				  0, 0, &ctx.pathspec,
				  reject_entry, &ctx);
	FUNC0(&ctx.pathspec);
	return ret != 0;
}