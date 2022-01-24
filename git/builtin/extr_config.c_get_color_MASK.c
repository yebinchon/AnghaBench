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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  config_options ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ get_color_found ; 
 char const* get_color_slot ; 
 int /*<<< orphan*/  git_get_color_config ; 
 int /*<<< orphan*/  given_config_source ; 
 char* parsed_color ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC5(const char *var, const char *def_color)
{
	get_color_slot = var;
	get_color_found = 0;
	parsed_color[0] = '\0';
	FUNC2(git_get_color_config, NULL,
			    &given_config_source, &config_options);

	if (!get_color_found && def_color) {
		if (FUNC1(def_color, parsed_color) < 0)
			FUNC3(FUNC0("unable to parse default color value"));
	}

	FUNC4(parsed_color, stdout);
}