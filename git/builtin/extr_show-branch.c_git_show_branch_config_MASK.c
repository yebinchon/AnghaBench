#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  argc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*) ; 
 int FUNC1 (char const*) ; 
 TYPE_1__ default_args ; 
 int FUNC2 (char const*,char const*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  showbranch_use_color ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(const char *var, const char *value, void *cb)
{
	if (!FUNC4(var, "showbranch.default")) {
		if (!value)
			return FUNC1(var);
		/*
		 * default_arg is now passed to parse_options(), so we need to
		 * mimic the real argv a bit better.
		 */
		if (!default_args.argc)
			FUNC0(&default_args, "show-branch");
		FUNC0(&default_args, value);
		return 0;
	}

	if (!FUNC4(var, "color.showbranch")) {
		showbranch_use_color = FUNC3(var, value);
		return 0;
	}

	return FUNC2(var, value, cb);
}