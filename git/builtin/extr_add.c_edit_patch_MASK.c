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
struct stat {int /*<<< orphan*/  st_size; } ;
struct TYPE_3__ {int ignore_dirty_submodules; } ;
struct TYPE_4__ {int context; int close_file; int /*<<< orphan*/  file; TYPE_1__ flags; scalar_t__ use_color; int /*<<< orphan*/  output_format; } ;
struct rev_info {TYPE_2__ diffopt; } ;
struct child_process {int git_cmd; char const** argv; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  DIFF_FORMAT_PATCH ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_diff_basic_config ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int,int) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct rev_info*,char const*) ; 
 scalar_t__ FUNC10 (struct child_process*) ; 
 scalar_t__ FUNC11 (struct rev_info*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,char const**,struct rev_info*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char*,struct stat*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int,char*) ; 

__attribute__((used)) static int FUNC16(int argc, const char **argv, const char *prefix)
{
	char *file = FUNC5("ADD_EDIT.patch");
	const char *apply_argv[] = { "apply", "--recount", "--cached",
		NULL, NULL };
	struct child_process child = CHILD_PROCESS_INIT;
	struct rev_info rev;
	int out;
	struct stat st;

	apply_argv[3] = file;

	FUNC4(git_diff_basic_config, NULL); /* no "diff" UI options */

	if (FUNC8() < 0)
		FUNC1(FUNC0("Could not read the index"));

	FUNC9(the_repository, &rev, prefix);
	rev.diffopt.context = 7;

	argc = FUNC12(argc, argv, &rev, NULL);
	rev.diffopt.output_format = DIFF_FORMAT_PATCH;
	rev.diffopt.use_color = 0;
	rev.diffopt.flags.ignore_dirty_submodules = 1;
	out = FUNC7(file, O_CREAT | O_WRONLY | O_TRUNC, 0666);
	if (out < 0)
		FUNC1(FUNC0("Could not open '%s' for writing."), file);
	rev.diffopt.file = FUNC15(out, "w");
	rev.diffopt.close_file = 1;
	if (FUNC11(&rev, 0))
		FUNC1(FUNC0("Could not write patch"));

	if (FUNC6(file, NULL, NULL))
		FUNC1(FUNC0("editing patch failed"));

	if (FUNC13(file, &st))
		FUNC2(FUNC0("Could not stat '%s'"), file);
	if (!st.st_size)
		FUNC1(FUNC0("Empty patch. Aborted."));

	child.git_cmd = 1;
	child.argv = apply_argv;
	if (FUNC10(&child))
		FUNC1(FUNC0("Could not apply '%s'"), file);

	FUNC14(file);
	FUNC3(file);
	return 0;
}