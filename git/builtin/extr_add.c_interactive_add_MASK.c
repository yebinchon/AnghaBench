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
struct pathspec {int dummy; } ;

/* Variables and functions */
 int PATHSPEC_PREFER_FULL ; 
 int PATHSPEC_PREFIX_ORIGIN ; 
 int PATHSPEC_SYMLINK_LEADING_PATH ; 
 int /*<<< orphan*/  FUNC0 (struct pathspec*,int /*<<< orphan*/ ,int,char const*,char const**) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,struct pathspec*) ; 

int FUNC2(int argc, const char **argv, const char *prefix, int patch)
{
	struct pathspec pathspec;

	FUNC0(&pathspec, 0,
		       PATHSPEC_PREFER_FULL |
		       PATHSPEC_SYMLINK_LEADING_PATH |
		       PATHSPEC_PREFIX_ORIGIN,
		       prefix, argv);

	return FUNC1(NULL,
				   patch ? "--patch" : NULL,
				   &pathspec);
}