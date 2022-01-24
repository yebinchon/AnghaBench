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
typedef  scalar_t__ ypxfrstat ;
struct jobs {unsigned long tid; int polled; int /*<<< orphan*/  prognum; int /*<<< orphan*/  server; int /*<<< orphan*/  map; struct jobs* next; } ;

/* Variables and functions */
 scalar_t__ YPXFR_AGE ; 
 scalar_t__ YPXFR_SUCC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,...) ; 
 struct jobs* yppush_joblist ; 
 int /*<<< orphan*/  yppush_running_jobs ; 
 unsigned long FUNC2 (scalar_t__) ; 
 unsigned long FUNC3 (scalar_t__) ; 

__attribute__((used)) static int
FUNC4(ypxfrstat status, unsigned long tid)
{
	struct jobs *job;

	job = yppush_joblist;

	while (job != NULL) {
		if (job->tid == tid)
			break;
		job = job->next;
	}

	if (job == NULL) {
		FUNC1("warning: received callback with invalid transaction ID: %lu",
			 tid);
		return (0);
	}

	if (job->polled) {
		FUNC1("warning: received callback with duplicate transaction ID: %lu",
			 tid);
		return (0);
	}

	if (verbose > 1) {
		FUNC1("checking return status: transaction ID: %lu",
								job->tid);
	}

	if (status != YPXFR_SUCC || verbose) {
		FUNC1("transfer of map %s to server %s %s",
		 	job->map, job->server, status == YPXFR_SUCC ?
		 	"succeeded" : "failed");
		FUNC1("status returned by ypxfr: %s", status > YPXFR_AGE ?
			FUNC2(status) :
			FUNC3(status));
	}

	job->polled = 1;

	FUNC0(job->prognum, 1);

	yppush_running_jobs--;
	return(0);
}