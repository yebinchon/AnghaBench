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
struct replay_opts {int dummy; } ;
struct commit {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct replay_opts*,char const*,struct commit*,char const*) ; 

__attribute__((used)) static int FUNC10(struct replay_opts *opts, const char *head_name,
			    struct commit *onto, const char *orig_head)
{
	FILE *interactive;

	if (!FUNC5(FUNC6()) && FUNC7(FUNC6()))
		return FUNC2(FUNC0("could not create temporary %s"), FUNC6());

	FUNC1("REBASE_HEAD");

	interactive = FUNC4(FUNC8(), "w");
	if (!interactive)
		return FUNC2(FUNC0("could not mark as interactive"));
	FUNC3(interactive);

	return FUNC9(opts, head_name, onto, orig_head);
}