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
struct termios {int dummy; } ;

/* Variables and functions */
 int FD ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  TIOCCDTR ; 
 int /*<<< orphan*/  TIOCNXCL ; 
 int /*<<< orphan*/  FUNC0 (struct termios*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct termios*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,struct termios*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,struct termios*) ; 

void
FUNC8(void)
{
	struct termios	cntrl;

        FUNC5(2);
#ifdef DEBUG
        printf("[disconnect: FD=%d]\n", FD);
#endif
        if (FD > 0) {
                FUNC3(FD, TIOCCDTR, 0);
		FUNC6(FD, &cntrl);
		FUNC1(&cntrl, 0);
		FUNC0(&cntrl, 0);
		FUNC7(FD, TCSAFLUSH, &cntrl);
                FUNC3(FD, TIOCNXCL, NULL);
        }
        FUNC2(FD);
}