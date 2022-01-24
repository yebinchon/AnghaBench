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
struct unpack_trees_options {struct dir_struct* dir; } ;
struct option {scalar_t__ value; } ;
struct dir_struct {char const* exclude_per_dir; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DIR_SHOW_IGNORED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct dir_struct* FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(const struct option *opt, const char *arg,
				    int unset)
{
	struct dir_struct *dir;
	struct unpack_trees_options *opts;

	FUNC0(unset);

	opts = (struct unpack_trees_options *)opt->value;

	if (opts->dir)
		FUNC1("more than one --exclude-per-directory given.");

	dir = FUNC2(1, sizeof(*opts->dir));
	dir->flags |= DIR_SHOW_IGNORED;
	dir->exclude_per_dir = arg;
	opts->dir = dir;
	/* We do not need to nor want to do read-directory
	 * here; we are merely interested in reusing the
	 * per directory ignore stack mechanism.
	 */
	return 0;
}