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
typedef  scalar_t__ time_t ;
struct tm {int tm_isdst; int tm_hour; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_wday; int /*<<< orphan*/  tm_mday; scalar_t__ tm_sec; } ;

/* Variables and functions */
 int EOF ; 
#define  MIDNIGHT 134 
#define  MINUS 133 
#define  NOON 132 
#define  NOW 131 
#define  NUMBER 130 
#define  PLUS 129 
#define  TEATIME 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 struct tm* FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct tm*) ; 
 scalar_t__ FUNC4 (struct tm*) ; 
 int /*<<< orphan*/  FUNC5 (struct tm*) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct tm*) ; 
 int scc ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct tm*) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

time_t
FUNC12(int argc, char **argv)
{
/* Do the argument parsing, die if necessary, and return the time the job
 * should be run.
 */
    time_t nowtimer, runtimer;
    struct tm nowtime, runtime;
    int hr = 0;
    /* this MUST be initialized to zero for midnight/noon/teatime */

    nowtimer = FUNC8(NULL);
    nowtime = *FUNC2(&nowtimer);

    runtime = nowtime;
    runtime.tm_sec = 0;
    runtime.tm_isdst = 0;

    if (argc <= optind)
	FUNC11();

    FUNC1(argc-optind, argv+optind);

    switch (FUNC10()) {
    case NOW:	
	    if (scc < 1) {
		return nowtimer;
	    }
	    /* now is optional prefix for PLUS tree */
	    FUNC0(PLUS);
	    /* FALLTHROUGH */
    case PLUS:
	    FUNC7(&runtime);
	    break;

	    /* MINUS is different from PLUS in that NOW is not
	     * an optional prefix for it
	     */
    case MINUS:
	    FUNC3(&runtime);
	    break;
    case NUMBER:
	    FUNC9(&runtime);
	    FUNC5(&runtime);
	    break;

	    /* evil coding for TEATIME|NOON|MIDNIGHT - we've initialised
	     * hr to zero up above, then fall into this case in such a
	     * way so we add +12 +4 hours to it for teatime, +12 hours
	     * to it for noon, and nothing at all for midnight, then
	     * set our runtime to that hour before leaping into the
	     * month scanner
	     */
    case TEATIME:
	    hr += 4;
	    /* FALLTHROUGH */
    case NOON:
	    hr += 12;
	    /* FALLTHROUGH */
    case MIDNIGHT:
	    if (runtime.tm_hour >= hr) {
		runtime.tm_mday++;
		runtime.tm_wday++;
	    }
	    runtime.tm_hour = hr;
	    runtime.tm_min = 0;
	    FUNC10();
	    /* FALLTHROUGH to month setting */
    default:
	    FUNC5(&runtime);
	    break;
    } /* ugly case statement */
    FUNC0(EOF);

    /* convert back to time_t
     */
    runtime.tm_isdst = -1;
    runtimer = FUNC4(&runtime);

    if (runtimer < 0)
	FUNC6("garbled time");

    if (nowtimer > runtimer)
	FUNC6("trying to travel back in time");

    return runtimer;
}