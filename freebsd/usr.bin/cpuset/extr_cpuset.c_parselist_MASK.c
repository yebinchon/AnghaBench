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
struct bitset {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,struct bitset*) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (char) ; 

__attribute__((used)) static void
FUNC4(char *list, struct bitset *mask, int size)
{
	enum { NONE, NUM, DASH } state;
	int lastnum;
	int curnum;
	char *l;

	state = NONE;
	curnum = lastnum = 0;
	for (l = list; *l != '\0';) {
		if (FUNC3(*l)) {
			curnum = FUNC1(l);
			if (curnum >= size)
				FUNC2(EXIT_FAILURE,
				    "List entry %d exceeds maximum of %d",
				    curnum, size - 1);
			while (FUNC3(*l))
				l++;
			switch (state) {
			case NONE:
				lastnum = curnum;
				state = NUM;
				break;
			case DASH:
				for (; lastnum <= curnum; lastnum++)
					FUNC0(size, lastnum, mask);
				state = NONE;
				break;
			case NUM:
			default:
				goto parserr;
			}
			continue;
		}
		switch (*l) {
		case ',':
			switch (state) {
			case NONE:
				break;
			case NUM:
				FUNC0(size, curnum, mask);
				state = NONE;
				break;
			case DASH:
				goto parserr;
				break;
			}
			break;
		case '-':
			if (state != NUM)
				goto parserr;
			state = DASH;
			break;
		default:
			goto parserr;
		}
		l++;
	}
	switch (state) {
		case NONE:
			break;
		case NUM:
			FUNC0(size, curnum, mask);
			break;
		case DASH:
			goto parserr;
	}
	return;
parserr:
	FUNC2(EXIT_FAILURE, "Malformed list %s", list);
}