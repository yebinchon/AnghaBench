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
#define  GETS_ECHOPASS 129 
#define  GETS_NOECHO 128 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(char *cp, size_t size, int visible)
{
	char *lp, *end;
	int c;

	FUNC1();

	lp = cp;
	end = cp + size - 1;
	for (;;) {
		c = FUNC0() & 0177;
		switch (c) {
		case '\n':
		case '\r':
			FUNC2(c);
			*lp = '\0';
			FUNC4();
			return;
		case '\b':
		case '\177':
			if (lp > cp) {
				if (visible)
					FUNC3("\b \b");
				lp--;
			}
			continue;
		case '\0':
			continue;
		default:
			if (lp < end) {
				switch (visible) {
				case GETS_NOECHO:
					break;
				case GETS_ECHOPASS:
					FUNC2('*');
					break;
				default:
					FUNC2(c);
					break;
				}
				*lp++ = c;
			}
		}
	}
}