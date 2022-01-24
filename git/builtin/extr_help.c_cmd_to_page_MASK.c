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
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 char const* FUNC2 (char*,char const*) ; 

__attribute__((used)) static const char *FUNC3(const char *git_cmd)
{
	if (!git_cmd)
		return "git";
	else if (FUNC1(git_cmd, "git"))
		return git_cmd;
	else if (FUNC0(git_cmd))
		return FUNC2("git-%s", git_cmd);
	else
		return FUNC2("git%s", git_cmd);
}