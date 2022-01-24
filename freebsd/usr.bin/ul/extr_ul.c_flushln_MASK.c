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
struct TYPE_2__ {int c_mode; char c_char; int c_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURS_RIGHT ; 
 int NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ iflag ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int maxcol ; 
 scalar_t__ must_overstrike ; 
 TYPE_1__* obuf ; 
 int /*<<< orphan*/  FUNC4 (char,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ upln ; 

__attribute__((used)) static void
FUNC8(void)
{
	int lastmode;
	int i;
	int hadmodes = 0;

	lastmode = NORMAL;
	for (i = 0; i < maxcol; i++) {
		if (obuf[i].c_mode != lastmode) {
			hadmodes++;
			FUNC7(obuf[i].c_mode);
			lastmode = obuf[i].c_mode;
		}
		if (obuf[i].c_char == '\0') {
			if (upln)
				FUNC0(CURS_RIGHT);
			else
				FUNC4(' ', 1);
		} else
			FUNC4(obuf[i].c_char, obuf[i].c_width);
		if (obuf[i].c_width > 1)
			i += obuf[i].c_width - 1;
	}
	if (lastmode != NORMAL) {
		FUNC7(0);
	}
	if (must_overstrike && hadmodes)
		FUNC5();
	FUNC6('\n');
	if (iflag && hadmodes)
		FUNC2();
	(void)FUNC1(stdout);
	if (upln)
		upln--;
	FUNC3();
}