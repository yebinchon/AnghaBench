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
struct rev_info {int dummy; } ;
struct repository {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_diff_ui_config ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*,struct commit*) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*,struct rev_info*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char const**,struct rev_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct repository *r,
			   const char *prefix,
			   struct commit *commit)
{
	const char *argv[] = {
		"diff-tree", "--pretty", "--stat", "--summary", "--cc", NULL
	};
	struct rev_info opt;

	FUNC1(git_diff_ui_config, NULL);
	FUNC3(r, &opt, prefix);

	FUNC4(FUNC0(argv) - 1, argv, &opt, NULL);
	FUNC2(&opt, commit);
}