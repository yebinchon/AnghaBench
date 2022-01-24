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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int u_int ;
struct timecounter {int tc_frequency; int tc_counter_mask; int tc_quality; char* tc_name; int /*<<< orphan*/  (* tc_get_timecount ) (struct timecounter*) ;struct timecounter* tc_next; } ;
struct sysctl_oid {int dummy; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int CTLTYPE_U64 ; 
 int CTLTYPE_UINT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct timecounter*,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _kern_timecounter_tc ; 
 scalar_t__ bootverbose ; 
 int hz ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct timecounter*) ; 
 int /*<<< orphan*/  FUNC8 (struct timecounter*) ; 
 int /*<<< orphan*/  sysctl_kern_timecounter_freq ; 
 int /*<<< orphan*/  sysctl_kern_timecounter_get ; 
 scalar_t__ tc_chosen ; 
 struct timecounter* timecounter ; 
 struct timecounter* timecounters ; 

void
FUNC9(struct timecounter *tc)
{
	u_int u;
	struct sysctl_oid *tc_root;

	u = tc->tc_frequency / tc->tc_counter_mask;
	/* XXX: We need some margin here, 10% is a guess */
	u *= 11;
	u /= 10;
	if (u > hz && tc->tc_quality >= 0) {
		tc->tc_quality = -2000;
		if (bootverbose) {
			FUNC6("Timecounter \"%s\" frequency %ju Hz",
			    tc->tc_name, (uintmax_t)tc->tc_frequency);
			FUNC6(" -- Insufficient hz, needs at least %u\n", u);
		}
	} else if (tc->tc_quality >= 0 || bootverbose) {
		FUNC6("Timecounter \"%s\" frequency %ju Hz quality %d\n",
		    tc->tc_name, (uintmax_t)tc->tc_frequency,
		    tc->tc_quality);
	}

	tc->tc_next = timecounters;
	timecounters = tc;
	/*
	 * Set up sysctl tree for this counter.
	 */
	tc_root = FUNC1(NULL,
	    FUNC5(_kern_timecounter_tc), OID_AUTO, tc->tc_name,
	    CTLFLAG_RW, 0, "timecounter description", "timecounter");
	FUNC3(NULL, FUNC4(tc_root), OID_AUTO,
	    "mask", CTLFLAG_RD, &(tc->tc_counter_mask), 0,
	    "mask for implemented bits");
	FUNC2(NULL, FUNC4(tc_root), OID_AUTO,
	    "counter", CTLTYPE_UINT | CTLFLAG_RD, tc, sizeof(*tc),
	    sysctl_kern_timecounter_get, "IU", "current timecounter value");
	FUNC2(NULL, FUNC4(tc_root), OID_AUTO,
	    "frequency", CTLTYPE_U64 | CTLFLAG_RD, tc, sizeof(*tc),
	     sysctl_kern_timecounter_freq, "QU", "timecounter frequency");
	FUNC0(NULL, FUNC4(tc_root), OID_AUTO,
	    "quality", CTLFLAG_RD, &(tc->tc_quality), 0,
	    "goodness of time counter");
	/*
	 * Do not automatically switch if the current tc was specifically
	 * chosen.  Never automatically use a timecounter with negative quality.
	 * Even though we run on the dummy counter, switching here may be
	 * worse since this timecounter may not be monotonic.
	 */
	if (tc_chosen)
		return;
	if (tc->tc_quality < 0)
		return;
	if (tc->tc_quality < timecounter->tc_quality)
		return;
	if (tc->tc_quality == timecounter->tc_quality &&
	    tc->tc_frequency < timecounter->tc_frequency)
		return;
	(void)tc->tc_get_timecount(tc);
	(void)tc->tc_get_timecount(tc);
	timecounter = tc;
}