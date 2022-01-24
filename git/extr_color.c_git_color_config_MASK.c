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
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  git_use_color_default ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

int FUNC2(const char *var, const char *value, void *cb)
{
	if (!FUNC1(var, "color.ui")) {
		git_use_color_default = FUNC0(var, value);
		return 0;
	}

	return 0;
}