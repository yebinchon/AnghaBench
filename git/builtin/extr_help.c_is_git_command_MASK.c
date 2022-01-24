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
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  main_cmds ; 
 int /*<<< orphan*/  other_cmds ; 

__attribute__((used)) static int FUNC3(const char *s)
{
	if (FUNC0(s))
		return 1;

	FUNC2("git-", &main_cmds, &other_cmds);
	return FUNC1(&main_cmds, s) ||
		FUNC1(&other_cmds, s);
}