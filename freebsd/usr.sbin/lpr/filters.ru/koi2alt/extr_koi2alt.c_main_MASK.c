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
 int EOF ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * koi2alt ; 
 scalar_t__ length ; 
 scalar_t__ lines ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

int FUNC8(int argc, char *argv[])
{
	int c, i;
	char *cp;

	while (--argc) {
		if (*(cp = *++argv) == '-') {
			switch (*++cp) {
			case 'l':
				if ((i = FUNC0(++cp)) > 0)
					length = i;
				break;
			}
		}
	}

	while ((c = FUNC3()) != EOF) {
		if (c == '\031') {
			if ((c = FUNC3()) == '\1') {
				lines = 0;
				FUNC1(stdout);
				FUNC5(FUNC4(), SIGSTOP);
				continue;
			} else {
				FUNC7(c, stdin);
				c = '\031';
			}
		} else if (c & 0x80) {
			FUNC2(koi2alt[c & 0x7F], stdout);
			continue;
		} else if (c == '\n')
			lines++;
		else if (c == '\f')
			lines = length;
		FUNC6(c);
		if (lines >= length) {
			lines = 0;
			FUNC1(stdout);
		}
	}
	return 0;
}