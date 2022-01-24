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

	(void)FUNC1(stderr,
	    "usage: jail [-dhilqv] [-J jid_file] [-u username] [-U username]\n"
	    "            -[cmr] param=value ... [command=command ...]\n"
	    "       jail [-dqv] [-f file] [-e separator] -[cmr] [jail]\n"
	    "       jail [-qv] [-f file] -[rR] ['*' | jail ...]\n"
	    "       jail [-dhilqv] [-J jid_file] [-u username] [-U username]\n"
	    "            [-n jailname] [-s securelevel]\n"
	    "            path hostname [ip[,...]] command ...\n");
	FUNC0(1);
}