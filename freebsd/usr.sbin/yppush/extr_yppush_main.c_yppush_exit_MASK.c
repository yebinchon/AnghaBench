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
struct jobs {scalar_t__ polled; int server; char* tid; struct jobs* next; int /*<<< orphan*/  prognum; } ;

/* Variables and functions */
 int /*<<< orphan*/  YPPUSH_RESPONSE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct jobs* yppush_joblist ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(int now)
{
	struct jobs *jptr;
	int still_pending = 1;

	/* Let all the information trickle in. */
	while (!now && still_pending) {
		jptr = yppush_joblist;
		still_pending = 0;
		while (jptr) {
			if (jptr->polled == 0) {
				still_pending++;
				if (verbose > 1)
					FUNC2("%s has not responded",
						  jptr->server);
			} else {
				if (verbose > 1)
					FUNC2("%s has responded",
						  jptr->server);
			}
			jptr = jptr->next;
		}
		if (still_pending) {
			if (verbose > 1)
				FUNC2("%d transfer%sstill pending",
					still_pending,
					still_pending > 1 ? "s " : " ");
			if (FUNC3 (YPPUSH_RESPONSE_TIMEOUT) == 0) {
				FUNC2("timed out");
				now = 1;
			}
		} else {
			if (verbose)
				FUNC2("all transfers complete");
			break;
		}
	}


	/* All stats collected and reported -- kill all the stragglers. */
	jptr = yppush_joblist;
	while (jptr) {
		if (!jptr->polled)
			FUNC2("warning: exiting with transfer \
to %s (transid = %lu) still pending", jptr->server, jptr->tid);
		FUNC1(jptr->prognum, 1);
		jptr = jptr->next;
	}

	FUNC0(0);
}