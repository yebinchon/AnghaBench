#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int c_oflag; } ;

/* Variables and functions */
 int OCRNL ; 
 int ONLCR ; 
 int ONLRET ; 
 char PC ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int TAB3 ; 
 int /*<<< orphan*/  TCSADRAIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ isreset ; 
 TYPE_1__ oldmode ; 
 int /*<<< orphan*/  outc ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC6 (char*,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(void)
{
	char *bp, buf[1024];
	int settle;

	bp = buf;
	if (FUNC6("pc", &bp) != 0)		/* Get/set pad character. */
		PC = buf[0];

#ifdef TAB3
	if (oldmode.c_oflag & (TAB3 | ONLCR | OCRNL | ONLRET)) {
		oldmode.c_oflag &= (TAB3 | ONLCR | OCRNL | ONLRET);
		tcsetattr(STDERR_FILENO, TCSADRAIN, &oldmode);
	}
#endif
	settle = FUNC3();

	if (isreset) {
		bp = buf;
		if (FUNC6("rs", &bp) != 0 || FUNC6("is", &bp) != 0) {
			FUNC7(buf, 0, outc);
			settle = 1;
		}
		bp = buf;
		if (FUNC6("rf", &bp) != 0 || FUNC6("if", &bp) != 0) {
			FUNC0(buf);
			settle = 1;
		}
	}

	if (settle) {
		(void)FUNC2('\r', stderr);
		(void)FUNC1(stderr);
		(void)FUNC4(1);			/* Settle the terminal. */
	}
}