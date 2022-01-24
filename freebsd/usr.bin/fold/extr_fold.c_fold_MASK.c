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
typedef  char wint_t ;
typedef  char wchar_t ;

/* Variables and functions */
 scalar_t__ LINE_MAX ; 
 char WEOF ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int FUNC3 (int,char) ; 
 char* FUNC4 (char*,int) ; 
 scalar_t__ sflag ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 

void
FUNC7(int width)
{
	static wchar_t *buf;
	static int buf_max;
	int col, i, indx, space;
	wint_t ch;

	col = indx = 0;
	while ((ch = FUNC1()) != WEOF) {
		if (ch == '\n') {
			FUNC6(L"%.*ls\n", indx, buf);
			col = indx = 0;
			continue;
		}
		if ((col = FUNC3(col, ch)) > width) {
			if (sflag) {
				i = indx;
				while (--i >= 0 && !FUNC2(buf[i]))
					;
				space = i;
			}
			if (sflag && space != -1) {
				space++;
				FUNC6(L"%.*ls\n", space, buf);
				FUNC5(buf, buf + space, indx - space);
				indx -= space;
				col = 0;
				for (i = 0; i < indx; i++)
					col = FUNC3(col, buf[i]);
			} else {
				FUNC6(L"%.*ls\n", indx, buf);
				col = indx = 0;
			}
			col = FUNC3(col, ch);
		}
		if (indx + 1 > buf_max) {
			buf_max += LINE_MAX;
			buf = FUNC4(buf, sizeof(*buf) * buf_max);
			if (buf == NULL)
				FUNC0(1, "realloc()");
		}
		buf[indx++] = ch;
	}

	if (indx != 0)
		FUNC6(L"%.*ls", indx, buf);
}