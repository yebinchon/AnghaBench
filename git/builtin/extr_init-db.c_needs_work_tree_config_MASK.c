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

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(const char *git_dir, const char *work_tree)
{
	if (!FUNC1(work_tree, "/") && !FUNC1(git_dir, "/.git"))
		return 0;
	if (FUNC0(git_dir, work_tree, &git_dir) &&
	    !FUNC1(git_dir, "/.git"))
		return 0;
	return 1;
}