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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_year; int tm_mday; int tm_wday; } ;
struct cal_year {int year; int firstdayofweek; struct cal_month* months; struct cal_year* nextyear; int /*<<< orphan*/  paskha; int /*<<< orphan*/  easter; } ;
struct cal_month {int month; int firstdayjulian; int firstdayofweek; struct cal_day* days; struct cal_month* nextmonth; struct cal_year* year; } ;
struct cal_day {int dayofmonth; int julianday; int dayofweek; struct cal_day* nextday; struct cal_year* year; struct cal_month* month; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int** cumdaytab ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct cal_year* hyear ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC4 (struct tm*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct tm tm0 ; 

__attribute__((used)) static void
FUNC6(int y, int m, int d)
{
	struct cal_year *py, *pyp;
	struct cal_month *pm, *pmp;
	struct cal_day *pd, *pdp;
	int *cumday;

	pyp = NULL;
	py = hyear;
	while (py != NULL) {
		if (py->year == y + 1900)
			break;
		pyp = py;
		py = py->nextyear;
	}

	if (py == NULL) {
		struct tm td;
		time_t t;
		py = (struct cal_year *)FUNC0(1, sizeof(struct cal_year));
		py->year = y + 1900;
		py->easter = FUNC1(y);
		py->paskha = FUNC5(y);

		td = tm0;
		td.tm_year = y;
		td.tm_mday = 1;
		t = FUNC4(&td);
		FUNC3(&t, &td);
		py->firstdayofweek = td.tm_wday;

		if (pyp != NULL)
			pyp->nextyear = py;
	}
	if (pyp == NULL) {
		/* The very very very first one */
		hyear = py;
	}

	pmp = NULL;
	pm = py->months;
	while (pm != NULL) {
		if (pm->month == m)
			break;
		pmp = pm;
		pm = pm->nextmonth;
	}

	if (pm == NULL) {
		pm = (struct cal_month *)FUNC0(1, sizeof(struct cal_month));
		pm->year = py;
		pm->month = m;
		cumday = cumdaytab[FUNC2(y)];
		pm->firstdayjulian = cumday[m] + 2;
		pm->firstdayofweek =
		    (py->firstdayofweek + pm->firstdayjulian -1) % 7;
		if (pmp != NULL)
			pmp->nextmonth = pm;
	}
	if (pmp == NULL)
		py->months = pm;

	pdp = NULL;
	pd = pm->days;
	while (pd != NULL) {
		pdp = pd;
		pd = pd->nextday;
	}

	if (pd == NULL) {	/* Always true */
		pd = (struct cal_day *)FUNC0(1, sizeof(struct cal_day));
		pd->month = pm;
		pd->year = py;
		pd->dayofmonth = d;
		pd->julianday = pm->firstdayjulian + d - 1;
		pd->dayofweek = (pm->firstdayofweek + d - 1) % 7;
		if (pdp != NULL)
			pdp->nextday = pd;
	}
	if (pdp == NULL)
		pm->days = pd;
}