#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pathspec {int dummy; } ;
struct grep_opt {scalar_t__ status_only; TYPE_1__* repo; } ;
struct dir_struct {int nr; TYPE_2__** entries; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  dir ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_NO_GITLINKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,struct pathspec const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dir_struct*,int /*<<< orphan*/ ,struct pathspec const*) ; 
 int FUNC2 (struct grep_opt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dir_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dir_struct*) ; 

__attribute__((used)) static int FUNC5(struct grep_opt *opt, const struct pathspec *pathspec,
			  int exc_std, int use_index)
{
	struct dir_struct dir;
	int i, hit = 0;

	FUNC3(&dir, 0, sizeof(dir));
	if (!use_index)
		dir.flags |= DIR_NO_GITLINKS;
	if (exc_std)
		FUNC4(&dir);

	FUNC1(&dir, opt->repo->index, pathspec);
	for (i = 0; i < dir.nr; i++) {
		if (!FUNC0(opt->repo->index, dir.entries[i], pathspec, 0, NULL))
			continue;
		hit |= FUNC2(opt, dir.entries[i]->name);
		if (hit && opt->status_only)
			break;
	}
	return hit;
}