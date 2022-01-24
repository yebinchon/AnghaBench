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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  colopts ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*,char const*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,char const*,void*) ; 
 int /*<<< orphan*/  help_format ; 
 int /*<<< orphan*/  html_path ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(const char *var, const char *value, void *cb)
{
	if (FUNC6(var, "column."))
		return FUNC3(var, value, "help", &colopts);
	if (!FUNC7(var, "help.format")) {
		if (!value)
			return FUNC2(var);
		help_format = FUNC5(value);
		return 0;
	}
	if (!FUNC7(var, "help.htmlpath")) {
		if (!value)
			return FUNC2(var);
		html_path = FUNC8(value);
		return 0;
	}
	if (!FUNC7(var, "man.viewer")) {
		if (!value)
			return FUNC2(var);
		FUNC0(value);
		return 0;
	}
	if (FUNC6(var, "man."))
		return FUNC1(var, value);

	return FUNC4(var, value, cb);
}