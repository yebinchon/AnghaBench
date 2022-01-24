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
typedef  int /*<<< orphan*/  suffixes ;
struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct worker {int /*<<< orphan*/  w_lookup_failure; int /*<<< orphan*/  w_lookup_success; struct timespec w_max_lookup_time; } ;
struct addrinfo {int dummy; } ;
struct TYPE_2__ {int options; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int RES_DNSRCH ; 
 int RES_INIT ; 
 TYPE_1__ _res ; 
 int FUNC0 (char**,char*,char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct addrinfo**) ; 
 int /*<<< orphan*/  hints ; 
 int /*<<< orphan*/  max_random_sleep ; 
 size_t const FUNC5 () ; 
 size_t nrandwords ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char** randwords ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  workers_stop ; 

__attribute__((used)) static void *
FUNC9(void *arg)
{
	struct worker *w = arg;

	/* Turn off domain name list searching as much as possible. */
	if (_res.options & RES_INIT || FUNC8() == 0)
		_res.options &= ~RES_DNSRCH;
	do {
		const char *suffixes[] = { "net", "com", "org" };
		const size_t nsuffixes = sizeof(suffixes) / sizeof(suffixes[0]);
		struct timespec ts_begintime, ts_total;
		struct addrinfo *res;
		char *hostname;
		int error;

		FUNC7(max_random_sleep);
		if (FUNC0(&hostname, "%s%s%s.%s",
		    (FUNC5() % 2) == 0 ? "www." : "",
		    randwords[FUNC5() % nrandwords],
		    (FUNC5() % 3) == 0 ?
		    randwords[FUNC5() % nrandwords] : "",
		    suffixes[FUNC5() % nsuffixes]) == -1)
			continue;
		(void)FUNC1(CLOCK_REALTIME, &ts_begintime);
		error = FUNC4(hostname, NULL, hints, &res);
		(void)FUNC1(CLOCK_REALTIME, &ts_total);
		ts_total.tv_sec -= ts_begintime.tv_sec;
		ts_total.tv_nsec -= ts_begintime.tv_nsec;
		if (ts_total.tv_nsec < 0) {
			ts_total.tv_sec--;
			ts_total.tv_nsec += 1000000000;
		}
		if (ts_total.tv_sec > w->w_max_lookup_time.tv_sec ||
		    (ts_total.tv_sec == w->w_max_lookup_time.tv_sec &&
		    ts_total.tv_nsec > w->w_max_lookup_time.tv_sec))
			w->w_max_lookup_time = ts_total;
		FUNC2(hostname);
		if (error == 0) {
			w->w_lookup_success++;
			FUNC3(res);
		} else {
			w->w_lookup_failure++;
		}
	} while (!workers_stop);

	FUNC6(NULL);
}