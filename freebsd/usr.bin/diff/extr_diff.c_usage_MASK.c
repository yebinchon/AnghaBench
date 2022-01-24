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

void
FUNC2(void)
{
	(void)FUNC1(stderr,
	    "usage: diff [-aBbdilpTtw] [-c | -e | -f | -n | -q | -u] [--ignore-case]\n"
	    "            [--no-ignore-case] [--normal] [--strip-trailing-cr] [--tabsize]\n"
	    "            [-I pattern] [-L label] file1 file2\n"
	    "       diff [-aBbdilpTtw] [-I pattern] [-L label] [--ignore-case]\n"
	    "            [--no-ignore-case] [--normal] [--strip-trailing-cr] [--tabsize]\n"
	    "            -C number file1 file2\n"
	    "       diff [-aBbdiltw] [-I pattern] [--ignore-case] [--no-ignore-case]\n"
	    "            [--normal] [--strip-trailing-cr] [--tabsize] -D string file1 file2\n"
	    "       diff [-aBbdilpTtw] [-I pattern] [-L label] [--ignore-case]\n"
	    "            [--no-ignore-case] [--normal] [--tabsize] [--strip-trailing-cr]\n"
	    "            -U number file1 file2\n"
	    "       diff [-aBbdilNPprsTtw] [-c | -e | -f | -n | -q | -u] [--ignore-case]\n"
	    "            [--no-ignore-case] [--normal] [--tabsize] [-I pattern] [-L label]\n"
	    "            [-S name] [-X file] [-x pattern] dir1 dir2\n");

	FUNC0(2);
}