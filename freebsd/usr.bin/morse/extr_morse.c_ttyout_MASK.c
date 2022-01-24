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
 int CHAR_SPACE ; 
 int DASH_LEN ; 
 int /*<<< orphan*/  TIOCMGET ; 
 int /*<<< orphan*/  TIOCMSET ; 
 int TIOCM_RTS ; 
 int WORD_SPACE ; 
 int cdot_clock ; 
 int dot_clock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(const char *s)
{
	const char *c;
	int duration, on, lflags;

	for (c = s; *c != '\0'; c++) {
		switch (*c) {
		case '.':
			on = 1;
			duration = dot_clock;
			break;
		case '-':
			on = 1;
			duration = dot_clock * DASH_LEN;
			break;
		case ' ':
			on = 0;
			duration = cdot_clock * WORD_SPACE;
			break;
		default:
			on = 0;
			duration = 0;
		}
		if (on) {
			FUNC0(line, TIOCMGET, &lflags);
			lflags |= TIOCM_RTS;
			FUNC0(line, TIOCMSET, &lflags);
		}
		duration *= 10000;
		if (duration)
			FUNC1(duration);
		FUNC0(line, TIOCMGET, &lflags);
		lflags &= ~TIOCM_RTS;
		FUNC0(line, TIOCMSET, &lflags);
		duration = dot_clock * 10000;
		FUNC1(duration);
	}
	duration = cdot_clock * CHAR_SPACE * 10000;
	FUNC1(duration);
}