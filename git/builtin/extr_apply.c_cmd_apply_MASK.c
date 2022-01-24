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
struct apply_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct apply_state*,int,char const**,int) ; 
 int FUNC1 (int,char const**,struct apply_state*,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apply_usage ; 
 scalar_t__ FUNC2 (struct apply_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct apply_state*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct apply_state*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC6(int argc, const char **argv, const char *prefix)
{
	int force_apply = 0;
	int options = 0;
	int ret;
	struct apply_state state;

	if (FUNC5(&state, the_repository, prefix))
		FUNC4(128);

	argc = FUNC1(argc, argv,
				   &state, &force_apply, &options,
				   apply_usage);

	if (FUNC2(&state, force_apply))
		FUNC4(128);

	ret = FUNC0(&state, argc, argv, options);

	FUNC3(&state);

	return ret;
}