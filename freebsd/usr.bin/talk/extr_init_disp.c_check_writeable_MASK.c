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
struct stat {int st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  STDERR_FILENO ; 
 int S_IWGRP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{
	char *tty;
	struct stat sb;

	if ((tty = FUNC3(STDERR_FILENO)) == NULL)
		FUNC0(1, "ttyname");
	if (FUNC2(tty, &sb) < 0)
		FUNC0(1, "%s", tty);
	if (!(sb.st_mode & S_IWGRP))
		FUNC1(1, "The callee cannot write to this terminal, use \"mesg y\".");
}