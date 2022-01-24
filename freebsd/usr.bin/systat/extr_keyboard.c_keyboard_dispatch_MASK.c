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
 int /*<<< orphan*/  CMDLINE ; 
 int FUNC0 (char) ; 
 scalar_t__ EINTR ; 
 int ERR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int col ; 
 int /*<<< orphan*/  curscr ; 
 int FUNC2 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (char) ; 
 int FUNC6 () ; 
 char* line ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(int ch)
{

	if (ch == ERR) {
		if (errno == EINTR)
			return 0;
		FUNC3(1);
	}
	if (ch >= 'A' && ch <= 'Z')
		ch += 'a' - 'A';
	if (col == 0) {
		if (ch == FUNC0('l')) {
			FUNC10(curscr);
			return 0;
		}
		if (ch == FUNC0('g')) {
			FUNC9();
			return 0;
		}
		if (ch != ':')
			return 0;
		FUNC7(CMDLINE, 0);
		FUNC1();
	}
	if (ch == FUNC2() && col > 0) {
		if (col == 1 && line[0] == ':')
			return 0;
		col--;
		goto doerase;
	}
	if (ch == FUNC0('w') && col > 0) {
		while (--col >= 0 && FUNC5(line[col]))
			;
		col++;
		while (--col >= 0 && !FUNC5(line[col]))
			if (col == 0 && line[0] == ':')
				return 1;
		col++;
		goto doerase;
	}
	if (ch == FUNC6() && col > 0) {
		col = 0;
		if (line[0] == ':')
			col++;
doerase:
		FUNC7(CMDLINE, col);
		FUNC1();
		return 0;
	}
	if (FUNC4(ch) || ch == ' ') {
		line[col] = ch;
		FUNC8(CMDLINE, col, ch);
		col++;
	}

	if (col == 0 || (ch != '\r' && ch != '\n'))
		return 0;

	return 1;
}