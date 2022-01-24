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
 int AC ; 
 scalar_t__ FD ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  TIOCCDTR ; 
 int /*<<< orphan*/  TIOCNXCL ; 
 scalar_t__ child ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(void)
{
#ifdef DEBUG
        printf("[abort: AC=%d]\n", AC);
#endif
        FUNC4(2);
        if (child > 0)
                FUNC2(child, SIGKILL);
        if (FD > 0)
                FUNC1(FD, TIOCNXCL, NULL);
        FUNC0(AC);
        if (FD > 0)
                FUNC1(FD, TIOCCDTR, 0);
        FUNC0(FD);
}