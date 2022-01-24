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
typedef  enum thread_level { ____Placeholder_thread_level } thread_level ;

/* Variables and functions */
 int THREAD_DEEP ; 
 int THREAD_SHALLOW ; 
 int THREAD_UNSET ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static int FUNC1(const struct option *opt, const char *arg, int unset)
{
	enum thread_level *thread = (enum thread_level *)opt->value;
	if (unset)
		*thread = THREAD_UNSET;
	else if (!arg || !FUNC0(arg, "shallow"))
		*thread = THREAD_SHALLOW;
	else if (!FUNC0(arg, "deep"))
		*thread = THREAD_DEEP;
	/*
	 * Please update _git_formatpatch() in git-completion.bash
	 * when you add new options.
	 */
	else
		return 1;
	return 0;
}