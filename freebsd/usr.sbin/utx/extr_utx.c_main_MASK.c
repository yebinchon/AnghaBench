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
 int /*<<< orphan*/  BOOT_TIME ; 
 int /*<<< orphan*/  SHUTDOWN_TIME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char**) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int
FUNC5(int argc, char *argv[])
{

	if (argc == 2 && FUNC4(argv[1], "boot") == 0)
		return (FUNC0(BOOT_TIME));
	else if (argc == 2 && FUNC4(argv[1], "shutdown") == 0)
		return (FUNC0(SHUTDOWN_TIME));
	else if (argc >= 3 && FUNC4(argv[1], "rm") == 0)
		return (FUNC3(&argv[2]));

	FUNC2(stderr,
	    "usage: utx boot\n"
	    "       utx shutdown\n"
	    "       utx rm identifier ...\n");
	FUNC1(1);
}