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
typedef  int /*<<< orphan*/  ws ;
typedef  int /*<<< orphan*/  wchar_t ;
struct weekdays {char** names; } ;
struct monthlines {int /*<<< orphan*/ * extralen; scalar_t__* lines; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int MAX_WIDTH ; 
 int MONTH_WIDTH_B ; 
 int MONTH_WIDTH_B_J ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,struct monthlines*) ; 
 int /*<<< orphan*/  FUNC6 (struct weekdays*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static void
FUNC12(int y, int m, int jd_flag, int before, int after)
{
	struct monthlines year[12];
	struct weekdays wds;
	char	s[MAX_WIDTH], t[MAX_WIDTH];
	wchar_t	ws[MAX_WIDTH], ws1[MAX_WIDTH];
	const char	*wdss;
	int     i, j;
	int     mpl;
	int     mw;
	int	m1, m2;
	int	printyearheader;
	int	prevyear = -1;

	mpl = jd_flag ? 2 : 3;
	mw = jd_flag ? MONTH_WIDTH_B_J : MONTH_WIDTH_B;
	wdss = (mpl == 2) ? " " : "";

	while (before != 0) {
		FUNC0(m, y);
		before--;
		after++;
	}
	m1 = y * 12 + m - 1;
	m2 = m1 + after;

	FUNC6(&wds);

	/*
	 * The year header is printed when there are more than 'mpl' months
	 * and if the first month is a multitude of 'mpl'.
	 * If not, it will print the year behind every month.
	 */
	printyearheader = (after >= mpl - 1) && (FUNC1(m1) - 1) % mpl == 0;

	m = m1;
	while (m <= m2) {
		int count = 0;
		for (i = 0; i != mpl && m + i <= m2; i++) {
			FUNC5(FUNC2(m + i), FUNC1(m + i) - 1, jd_flag, year + i);
			count++;
		}

		/* Empty line between two rows of months */
		if (m != m1)
			FUNC7("\n");

		/* Year at the top. */
		if (printyearheader && FUNC2(m) != prevyear) {
			FUNC8(s, "%d", FUNC2(m));
			FUNC7("%s\n", FUNC4(t, s, mpl * mw));
			prevyear = FUNC2(m);
		}

		/* Month names. */
		for (i = 0; i < count; i++)
			if (printyearheader)
				FUNC11(L"%-*ls  ",
				    mw, FUNC10(ws, year[i].name, mw));
			else {
				FUNC9(ws, sizeof(ws)/sizeof(ws[0]),
				    L"%-ls %d", year[i].name, FUNC2(m + i));
				FUNC11(L"%-*ls  ", mw, FUNC10(ws1, ws, mw));
			}
		FUNC7("\n");

		/* Day of the week names. */
		for (i = 0; i < count; i++) {
			FUNC11(L"%s%ls%s%ls%s%ls%s%ls%s%ls%s%ls%s%ls ",
				wdss, wds.names[6], wdss, wds.names[0],
				wdss, wds.names[1], wdss, wds.names[2],
				wdss, wds.names[3], wdss, wds.names[4],
				wdss, wds.names[5]);
		}
		FUNC7("\n");

		/* And the days of the month. */
		for (i = 0; i != 6; i++) {
			for (j = 0; j < count; j++)
				FUNC7("%-*s  ",
				    FUNC3(mw, year[j].extralen[i]),
					year[j].lines[i]+1);
			FUNC7("\n");
		}

		m += mpl;
	}
}