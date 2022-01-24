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
struct TYPE_2__ {char* device_name; int /*<<< orphan*/  unit_number; scalar_t__ selected; } ;

/* Variables and functions */
 int COLWIDTH ; 
 int /*<<< orphan*/  DRIVESPERLINE ; 
 int INSET ; 
 TYPE_1__* dev_select ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int linesperregion ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,char*) ; 
 int num_devices ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wnd ; 

__attribute__((used)) static int
FUNC5(int row)
{
	int i, _col, regions, ndrives;
	char tmpstr[10];

#define COLWIDTH	17
#define DRIVESPERLINE	((getmaxx(wnd) - 1 - INSET) / COLWIDTH)
	for (ndrives = 0, i = 0; i < num_devices; i++)
		if (dev_select[i].selected)
			ndrives++;
	regions = FUNC2(ndrives, DRIVESPERLINE);
	/*
	 * Deduct -regions for blank line after each scrolling region.
	 */
	linesperregion = (FUNC1(wnd) - 1 - row - regions) / regions;
	/*
	 * Minimum region contains space for two
	 * label lines and one line of statistics.
	 */
	if (linesperregion < 3)
		linesperregion = 3;
	_col = INSET;
	for (i = 0; i < num_devices; i++)
		if (dev_select[i].selected) {
			if (_col + COLWIDTH >= FUNC0(wnd) - 1 - INSET) {
				_col = INSET, row += linesperregion + 1;
				if (row > FUNC1(wnd) - 1 - (linesperregion + 1))
					break;
			}
			FUNC4(tmpstr, "%s%d", dev_select[i].device_name,
				dev_select[i].unit_number);
			FUNC3(wnd, row, _col + 4, tmpstr);
			FUNC3(wnd, row + 1, _col, "  KB/t tps  MB/s ");
			_col += COLWIDTH;
		}
	if (_col)
		row += linesperregion + 1;
	return (row);
}