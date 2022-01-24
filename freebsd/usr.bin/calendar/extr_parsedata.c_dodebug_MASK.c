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
 int EastLongitude ; 
 int MAXMOONS ; 
 double UTCOffset ; 
 int /*<<< orphan*/  FUNC0 (int,double,double*,double*) ; 
 char* FUNC1 (int,double) ; 
 int /*<<< orphan*/  FUNC2 (int,double,double*,double*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int year1 ; 
 int year2 ; 

void
FUNC5(char *what)
{
	int year;

	FUNC3("UTCOffset: %g\n", UTCOffset);
	FUNC3("eastlongitude: %d\n", EastLongitude);

	if (FUNC4(what, "moon") == 0) {
		double ffullmoon[MAXMOONS], fnewmoon[MAXMOONS];
		int i;

		for (year = year1; year <= year2; year++) {
			FUNC2(year, UTCOffset, ffullmoon, fnewmoon);
			FUNC3("Full moon %d:\t", year);
			for (i = 0; ffullmoon[i] >= 0; i++) {
				FUNC3("%g (%s) ", ffullmoon[i],
				    FUNC1(year, ffullmoon[i]));
			}
			FUNC3("\nNew moon %d:\t", year);
			for (i = 0; fnewmoon[i] >= 0; i++) {
				FUNC3("%g (%s) ", fnewmoon[i],
				    FUNC1(year, fnewmoon[i]));
			}
			FUNC3("\n");

		}

		return;
	}

	if (FUNC4(what, "sun") == 0) {
		double equinoxdays[2], solsticedays[2];
		for (year = year1; year <= year2; year++) {
			FUNC3("Sun in %d:\n", year);
			FUNC0(year, UTCOffset, equinoxdays,
			    solsticedays);
			FUNC3("e[0] - %g (%s)\n",
			    equinoxdays[0],
			    FUNC1(year, equinoxdays[0]));
			FUNC3("e[1] - %g (%s)\n",
			    equinoxdays[1],
			    FUNC1(year, equinoxdays[1]));
			FUNC3("s[0] - %g (%s)\n",
			    solsticedays[0],
			    FUNC1(year, solsticedays[0]));
			FUNC3("s[1] - %g (%s)\n",
			    solsticedays[1],
			    FUNC1(year, solsticedays[1]));
		}
		return;
	}
}