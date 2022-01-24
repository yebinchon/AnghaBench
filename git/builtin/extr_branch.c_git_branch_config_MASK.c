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
struct ref_sorting {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * branch_colors ; 
 int /*<<< orphan*/  branch_use_color ; 
 int /*<<< orphan*/  colopts ; 
 int /*<<< orphan*/  color_branch_slots ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*,char const*,void*) ; 
 int FUNC4 (char const*,char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ref_sorting**,char const*) ; 
 scalar_t__ FUNC7 (char const*,char*,char const**) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(const char *var, const char *value, void *cb)
{
	const char *slot_name;
	struct ref_sorting **sorting_tail = (struct ref_sorting **)cb;

	if (!FUNC9(var, "branch.sort")) {
		if (!value)
			return FUNC2(var);
		FUNC6(sorting_tail, value);
		return 0;
	}

	if (FUNC8(var, "column."))
		return FUNC4(var, value, "branch", &colopts);
	if (!FUNC9(var, "color.branch")) {
		branch_use_color = FUNC5(var, value);
		return 0;
	}
	if (FUNC7(var, "color.branch.", &slot_name)) {
		int slot = FUNC0(color_branch_slots, slot_name);
		if (slot < 0)
			return 0;
		if (!value)
			return FUNC2(var);
		return FUNC1(value, branch_colors[slot]);
	}
	return FUNC3(var, value, cb);
}