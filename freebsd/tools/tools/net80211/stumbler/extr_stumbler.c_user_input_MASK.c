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
struct TYPE_2__ {int locked; } ;

/* Variables and functions */
#define  ERR 128 
 int FUNC0 (char*) ; 
 TYPE_1__ chaninfo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6() {
	static char chan[3];
	static int pos = 0;
	int c;

	c = FUNC3();

	switch (c) {
		case 'w':
			FUNC4();
			break;

		case 'q':
			FUNC1(0);
			break;

		case 'c':
			chaninfo.locked = !chaninfo.locked;
			break;

		case ERR:
			FUNC2(0, "getch()");
			break;

		case '0':
		case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
		case '7':
		case '8':
		case '9':
			chan[pos++] = c;
			if (pos == 2) {
				int ch = FUNC0(chan);
				if (ch <= 11 && ch >= 1) {
					FUNC5(FUNC0(chan));
					chaninfo.locked = 1;
				}	
				pos = 0;
			}	
			break;

		default:
			pos = 0;
			break;
	}		
}