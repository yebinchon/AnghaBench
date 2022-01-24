#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t readsp; int /*<<< orphan*/ * readstack; } ;

/* Variables and functions */
#define  EOF 128 
 TYPE_1__ bmachine ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(void)
{

	for (;;) {
		switch (FUNC3()) {
		case 'M':
			return;
		case EOF:
			FUNC0(1, "mark not found");
			return;
		case 'l':
		case 'L':
		case 's':
		case 'S':
		case ':':
		case ';':
		case '<':
		case '>':
		case '=':
			FUNC5();
			if (FUNC3() == 'e')
				FUNC5();
			else
				FUNC6();
			break;
		case '[':
			FUNC1(FUNC2(&bmachine.readstack[bmachine.readsp]));
			break;
		case '!':
			switch (FUNC3()) {
				case '<':
				case '>':
				case '=':
					FUNC5();
					if (FUNC3() == 'e')
						FUNC5();
					else
						FUNC6();
					break;
				default:
					FUNC1(FUNC4());
					break;
			}
			break;
		default:
			break;
		}
	}
}