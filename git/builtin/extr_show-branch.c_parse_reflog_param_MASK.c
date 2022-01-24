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
struct option {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DEFAULT_REFLOG ; 
 int FUNC1 (char*,char const*) ; 
 scalar_t__ reflog ; 
 scalar_t__ FUNC2 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC3(const struct option *opt, const char *arg,
			      int unset)
{
	char *ep;
	const char **base = (const char **)opt->value;
	FUNC0(unset);
	if (!arg)
		arg = "";
	reflog = FUNC2(arg, &ep, 10);
	if (*ep == ',')
		*base = ep + 1;
	else if (*ep)
		return FUNC1("unrecognized reflog param '%s'", arg);
	else
		*base = NULL;
	if (reflog <= 0)
		reflog = DEFAULT_REFLOG;
	return 0;
}