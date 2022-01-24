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
struct option {struct grep_opt* value; } ;
struct grep_opt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GREP_AND ; 
 int /*<<< orphan*/  FUNC2 (struct grep_opt*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct option *opt, const char *arg, int unset)
{
	struct grep_opt *grep_opt = opt->value;
	FUNC1(unset);
	FUNC0(arg);
	FUNC2(grep_opt, "--and", "command line", 0, GREP_AND);
	return 0;
}