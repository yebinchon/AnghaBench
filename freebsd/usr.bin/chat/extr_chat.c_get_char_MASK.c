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
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC4(void)
{
    int status;
    char c;

    status = FUNC3(STDIN_FILENO, &c, 1);

    switch (status) {
    case 1:
	return ((int)c & 0x7F);

    default:
	FUNC0("warning: read() on stdin returned %d", status);

    case -1:
	if ((status = FUNC2(0, F_GETFL, 0)) == -1)
	    FUNC1(2, "Can't get file mode flags on stdin: %m");

	if (FUNC2(0, F_SETFL, status & ~O_NONBLOCK) == -1)
	    FUNC1(2, "Can't set file mode flags on stdin: %m");
	
	return (-1);
    }
}