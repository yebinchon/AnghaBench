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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2(char *arg)
{

	if (FUNC1(arg, "xterm") == 0)
		FUNC0(stderr, "\033[=T");
	else if (FUNC1(arg, "cons25") == 0)
		FUNC0(stderr, "\033[=1T");
}