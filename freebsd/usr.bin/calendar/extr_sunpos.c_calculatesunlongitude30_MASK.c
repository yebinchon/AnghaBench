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
 int FUNC0 (int) ; 
 int HOURSPERDAY ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int** cumdaytab ; 
 size_t FUNC3 (int) ; 
 int** monthdaytab ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int,int,int,int,double) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int,int,int /*<<< orphan*/ ,double,double,double*,double*) ; 

int
FUNC6(int year, int degreeGMToffset, int *ichinesemonths)
{
	int m, d, h;
	double dec;
	double curL, prevL;
	int *pichinesemonths, *monthdays, *cumdays, i;
	int firstmonth330 = -1;

	cumdays = cumdaytab[FUNC3(year)];
	monthdays = monthdaytab[FUNC3(year)];
	pichinesemonths = ichinesemonths;

	h = 0;
	FUNC5(year - 1, 12, 31,
	    -24 * (degreeGMToffset / 360.0),
	    FUNC0(h), FUNC1(h), FUNC2(h), 0.0, 0.0, &prevL, &dec);

	for (m = 1; m <= 12; m++) {
		for (d = 1; d <= monthdays[m]; d++) {
			for (h = 0; h < 4 * HOURSPERDAY; h++) {
				FUNC5(year, m, d,
				    -24 * (degreeGMToffset / 360.0),
				    FUNC0(h), FUNC1(h), FUNC2(h),
				    0.0, 0.0, &curL, &dec);
				if (curL < 180 && prevL > 180) {
					*pichinesemonths = cumdays[m] + d;
#ifdef DEBUG
printf("%04d-%02d-%02d %02d:%02d - %d %g\n",
    year, m, d, HOUR(h), MIN(h), *pichinesemonths, curL);
#endif
					    pichinesemonths++;
				} else {
					for (i = 0; i <= 360; i += 30)
						if (curL > i && prevL < i) {
							*pichinesemonths =
							    cumdays[m] + d;
#ifdef DEBUG
printf("%04d-%02d-%02d %02d:%02d - %d %g\n",
    year, m, d, HOUR(h), MIN(h), *pichinesemonths, curL);
#endif
							if (i == 330)
								firstmonth330 = *pichinesemonths;
							pichinesemonths++;
						}
				}
				prevL = curL;
			}
		}
	}
	*pichinesemonths = -1;
	return (firstmonth330);
}