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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(stderr, "usage: athani [-i interface] [-l]\n");
	FUNC1(stderr, "    -i: interface\n");
	FUNC1(stderr, "    -l: list ANI labels\n");
	FUNC1(stderr, "  If no args are given after flags, the ANI state will be listed.\n");
	FUNC1(stderr, "  To set, use '<label> <value>' to set the state\n");
	FUNC0(-1);
}