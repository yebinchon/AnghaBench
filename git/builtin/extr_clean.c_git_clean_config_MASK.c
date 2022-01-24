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
 int FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * clean_colors ; 
 int /*<<< orphan*/  clean_use_color ; 
 int /*<<< orphan*/  colopts ; 
 int /*<<< orphan*/  color_interactive_slots ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 int force ; 
 int FUNC3 (char const*,char const*,void*) ; 
 int FUNC4 (char const*,char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*) ; 
 scalar_t__ FUNC7 (char const*,char*,char const**) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(const char *var, const char *value, void *cb)
{
	const char *slot_name;

	if (FUNC8(var, "column."))
		return FUNC4(var, value, "clean", &colopts);

	/* honors the color.interactive* config variables which also
	   applied in git-add--interactive and git-stash */
	if (!FUNC9(var, "color.interactive")) {
		clean_use_color = FUNC6(var, value);
		return 0;
	}
	if (FUNC7(var, "color.interactive.", &slot_name)) {
		int slot = FUNC0(color_interactive_slots, slot_name);
		if (slot < 0)
			return 0;
		if (!value)
			return FUNC2(var);
		return FUNC1(value, clean_colors[slot]);
	}

	if (!FUNC9(var, "clean.requireforce")) {
		force = !FUNC5(var, value);
		return 0;
	}

	/* inspect the color.ui config variable and others */
	return FUNC3(var, value, cb);
}