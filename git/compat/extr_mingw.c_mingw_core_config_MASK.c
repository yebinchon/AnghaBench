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
 int /*<<< orphan*/  HIDE_DOTFILES_DOTGITONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  hide_dotfiles ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  unset_environment_variables ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

int FUNC5(const char *var, const char *value, void *cb)
{
	if (!FUNC3(var, "core.hidedotfiles")) {
		if (value && !FUNC2(value, "dotgitonly"))
			hide_dotfiles = HIDE_DOTFILES_DOTGITONLY;
		else
			hide_dotfiles = FUNC1(var, value);
		return 0;
	}

	if (!FUNC3(var, "core.unsetenvvars")) {
		FUNC0(unset_environment_variables);
		unset_environment_variables = FUNC4(value);
		return 0;
	}

	return 0;
}