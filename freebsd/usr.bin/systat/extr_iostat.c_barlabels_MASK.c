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
 int /*<<< orphan*/  INSET ; 
 TYPE_1__* dev_select ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int kbpt ; 
 int linesperregion ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int num_devices ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wnd ; 

__attribute__((used)) static int
FUNC4(int row)
{
	int i;
	char tmpstr[10];

	FUNC1(wnd, row++, INSET,
	    "/0%  /10  /20  /30  /40  /50  /60  /70  /80  /90  /100");
	linesperregion = 2 + kbpt;
	for (i = 0; i < num_devices; i++)
		if (dev_select[i].selected) {
			if (row > FUNC0(wnd) - 1 - linesperregion)
				break;
			FUNC3(tmpstr, "%s%d", dev_select[i].device_name,
				dev_select[i].unit_number);
			FUNC2(wnd, row++, 0, "%-5.5s MB/s|",
				  tmpstr);
			FUNC1(wnd, row++, 0, "      tps|");
			if (kbpt)
				FUNC1(wnd, row++, 0, "     KB/t|");
		}
	return (row);
}