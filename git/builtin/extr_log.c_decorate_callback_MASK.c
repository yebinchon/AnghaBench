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
struct option {int dummy; } ;

/* Variables and functions */
 scalar_t__ DECORATE_SHORT_REFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int decoration_given ; 
 scalar_t__ decoration_style ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const struct option *opt, const char *arg, int unset)
{
	if (unset)
		decoration_style = 0;
	else if (arg)
		decoration_style = FUNC2(arg);
	else
		decoration_style = DECORATE_SHORT_REFS;

	if (decoration_style < 0)
		FUNC1(FUNC0("invalid --decorate option: %s"), arg);

	decoration_given = 1;

	return 0;
}