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
struct option {int /*<<< orphan*/  short_name; struct grep_opt* value; } ;
struct grep_opt {int pre_context; int post_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC3(const struct option *opt, const char *arg,
			    int unset)
{
	struct grep_opt *grep_opt = opt->value;
	int value;
	const char *endp;

	if (unset) {
		grep_opt->pre_context = grep_opt->post_context = 0;
		return 0;
	}
	value = FUNC2(arg, (char **)&endp, 10);
	if (*endp) {
		return FUNC1(FUNC0("switch `%c' expects a numerical value"),
			     opt->short_name);
	}
	grep_opt->pre_context = grep_opt->post_context = value;
	return 0;
}