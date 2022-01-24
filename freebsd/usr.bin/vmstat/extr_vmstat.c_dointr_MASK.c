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
typedef  int /*<<< orphan*/  kaddr ;
typedef  int /*<<< orphan*/  inamlen ;
struct TYPE_2__ {scalar_t__ n_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  X_INTRNAMES ; 
 size_t X_NINTRCNT ; 
 int /*<<< orphan*/  X_SINTRNAMES ; 
 unsigned long* FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 long long FUNC2 () ; 
 int /*<<< orphan*/ * kd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (uintptr_t,char*,size_t) ; 
 char* FUNC5 (size_t) ; 
 scalar_t__ FUNC6 (char*,char*,size_t*) ; 
 TYPE_1__* namelist ; 
 int /*<<< orphan*/  FUNC7 (unsigned long*,unsigned long*,char*,unsigned int,size_t,long long) ; 
 unsigned int FUNC8 (unsigned long**) ; 
 char* FUNC9 (char*,size_t) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static void
FUNC17(unsigned int interval, int reps)
{
	unsigned long *intrcnts, *old_intrcnts;
	char *intrname, *intrnames;
	long long period_ms, old_uptime, uptime;
	size_t clen, inamlen, istrnamlen;
	uintptr_t kaddr;
	unsigned int nintr;

	old_intrcnts = NULL;
	uptime = FUNC2();

	/* Get the names of each interrupt source */
	if (kd != NULL) {
		FUNC3(X_SINTRNAMES, &inamlen, sizeof(inamlen));
		if ((intrnames = FUNC5(inamlen)) == NULL)
			FUNC14(1, "malloc()");
		if (namelist[X_NINTRCNT].n_type == 0)
			FUNC3(X_INTRNAMES, intrnames, inamlen);
		else {
			FUNC3(X_INTRNAMES, &kaddr, sizeof(kaddr));
			FUNC4(kaddr, intrnames, inamlen);
		}
	} else {
		for (intrnames = NULL, inamlen = 1024; ; inamlen *= 2) {
			if ((intrnames = FUNC9(intrnames, inamlen)) == NULL)
				FUNC14(1, "reallocf()");
			if (FUNC6("hw.intrnames", intrnames, &inamlen) == 0)
				break;
		}
	}

	/* Determine the length of the longest interrupt name */
	intrname = intrnames;
	istrnamlen = FUNC10("interrupt");
	while(*intrname != '\0') {
		clen = FUNC10(intrname);
		if (clen > istrnamlen)
			istrnamlen = clen;
		intrname += FUNC10(intrname) + 1;
	}
	FUNC13("{T:/%-*s} {T:/%20s} {T:/%10s}\n",
	    (int)istrnamlen, "interrupt", "total", "rate");

	/* 
	 * Loop reps times printing differential interrupt counts.  If reps is
	 * zero, then run just once, printing total counts
	 */
	FUNC16("interrupt-statistics");

	period_ms = uptime / 1000000;
	while(1) {
		nintr = FUNC8(&intrcnts);
		/* 
		 * Initialize old_intrcnts to 0 for the first pass, so
		 * print_intrcnts will print total interrupts since boot
		 */
		if (old_intrcnts == NULL) {
			old_intrcnts = FUNC0(nintr, sizeof(unsigned long));
			if (old_intrcnts == NULL)
				FUNC14(1, "calloc()");
		}

		FUNC7(intrcnts, old_intrcnts, intrnames, nintr,
		    istrnamlen, period_ms);
		FUNC15();

		FUNC1(old_intrcnts);
		old_intrcnts = intrcnts;
		if (reps >= 0 && --reps <= 0)
			break;
		FUNC11(interval * 1000);
		old_uptime = uptime;
		uptime = FUNC2();
		period_ms = (uptime - old_uptime) / 1000000;
	}

	FUNC12("interrupt-statistics");
}