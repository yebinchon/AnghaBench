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
struct stash_info {int /*<<< orphan*/  i_tree; int /*<<< orphan*/  b_tree; int /*<<< orphan*/  w_tree; int /*<<< orphan*/  b_commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static void FUNC3(struct stash_info *info, const char *revision)
{
	if (FUNC2(&info->b_commit, "%s^1", revision) ||
	    FUNC2(&info->w_tree, "%s:", revision) ||
	    FUNC2(&info->b_tree, "%s^1:", revision) ||
	    FUNC2(&info->i_tree, "%s^2:", revision))
		FUNC1(FUNC0("'%s' is not a stash-like commit"), revision);
}