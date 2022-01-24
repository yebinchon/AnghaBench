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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tm ;
struct weekdays {int** names; } ;
struct tm {int tm_wday; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (int*,char*,int) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 

__attribute__((used)) static void
FUNC5(struct weekdays *wds)
{
	int i, len, width = 0;
	struct tm tm;
	wchar_t buf[20];

	FUNC0(&tm, 0, sizeof(tm));

	for (i = 0; i != 7; i++) {
		tm.tm_wday = (i+1) % 7;
		FUNC1(buf, sizeof(buf)/sizeof(buf[0]), L"%a", &tm);
		for (len = 2; len > 0; --len) {
			if ((width = FUNC3(buf, len)) <= 2)
				break;
		}
		FUNC4(wds->names[i], L'\0', 4);
		if (width == 1)
			wds->names[i][0] = L' ';
		FUNC2(wds->names[i], buf, len);
		FUNC2(wds->names[i], L" ", 1);
	}
}