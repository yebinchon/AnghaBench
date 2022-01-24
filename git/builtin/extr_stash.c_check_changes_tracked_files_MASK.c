#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int quick; int ignore_submodules; } ;
struct TYPE_5__ {TYPE_1__ flags; } ;
struct rev_info {int /*<<< orphan*/  prune_data; TYPE_2__ diffopt; int /*<<< orphan*/  pending; scalar_t__ abbrev; } ;
struct pathspec {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pathspec const*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (struct rev_info*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct rev_info*,int) ; 

__attribute__((used)) static int FUNC11(const struct pathspec *ps)
{
	int result;
	struct rev_info rev;
	struct object_id dummy;
	int ret = 0;

	/* No initial commit. */
	if (FUNC5("HEAD", &dummy))
		return -1;

	if (FUNC8() < 0)
		return -1;

	FUNC6(&rev, NULL);
	FUNC2(&rev.prune_data, ps);

	rev.diffopt.flags.quick = 1;
	rev.diffopt.flags.ignore_submodules = 1;
	rev.abbrev = 0;

	FUNC0(&rev);
	FUNC4(&rev.diffopt);

	result = FUNC10(&rev, 1);
	if (FUNC3(&rev.diffopt, result)) {
		ret = 1;
		goto done;
	}

	FUNC7(&rev.pending);
	result = FUNC9(&rev, 0);
	if (FUNC3(&rev.diffopt, result)) {
		ret = 1;
		goto done;
	}

done:
	FUNC1(&rev.prune_data);
	return ret;
}