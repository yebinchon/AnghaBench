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
 int FUNC0 (int*) ; 
 int msgCount ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int screen ; 
 int FUNC2 () ; 

int
FUNC3(void *v)
{
	char *arg = v;
	int s, size;
	int cur[1];

	cur[0] = 0;
	size = FUNC2();
	s = screen;
	switch (*arg) {
	case 0:
	case '+':
		s++;
		if (s * size >= msgCount) {
			FUNC1("On last screenful of messages\n");
			return (0);
		}
		screen = s;
		break;

	case '-':
		if (--s < 0) {
			FUNC1("On first screenful of messages\n");
			return (0);
		}
		screen = s;
		break;

	default:
		FUNC1("Unrecognized scrolling command \"%s\"\n", arg);
		return (1);
	}
	return (FUNC0(cur));
}