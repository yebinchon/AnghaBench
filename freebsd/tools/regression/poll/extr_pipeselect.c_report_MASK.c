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
 scalar_t__ FT_PIPE ; 
 scalar_t__ FT_SOCKETPAIR ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ filetype ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC3(int num, const char *state, int expected, int got)
{
	if (!expected == !got)
		FUNC2("ok %-2d    ", num);
	else
		FUNC2("not ok %-2d", num);
	FUNC2(" %s state %s: expected %s; got %s\n",
	    filetype == FT_PIPE ? "Pipe" :
	    filetype == FT_SOCKETPAIR ? "Sock" : "FIFO",
	    state, FUNC0(expected), FUNC0(got));
	FUNC1(stdout);
}