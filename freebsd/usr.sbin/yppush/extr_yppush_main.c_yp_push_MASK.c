#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct jobs {unsigned long tid; unsigned long prognum; scalar_t__ stat; struct jobs* next; scalar_t__ polled; void* map; void* server; int /*<<< orphan*/  port; } ;
struct TYPE_4__ {int /*<<< orphan*/  xp_port; } ;
typedef  TYPE_1__ SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int RPC_ANYSOCK ; 
 scalar_t__ TRUE ; 
 scalar_t__ YPPUSH_YPSERV ; 
 scalar_t__ FUNC0 (int) ; 
 void* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int) ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct jobs* yppush_joblist ; 
 int /*<<< orphan*/  yppush_mapname ; 
 scalar_t__ FUNC6 (struct jobs*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  yppush_xfrrespprog_1 ; 

__attribute__((used)) static int
FUNC8(char *server, char *map, unsigned long tid)
{
	unsigned long prognum;
	int sock = RPC_ANYSOCK;
	SVCXPRT *xprt;
	struct jobs *job;

	/* Register the job in our linked list of jobs. */

	/* First allocate job structure */
	if ((job = (struct jobs *)FUNC0(sizeof (struct jobs))) == NULL) {
		FUNC4("malloc failed");
		FUNC5 (1);
	}

	/*
	 * Register the callback service on the first free transient
	 * program number.
	 */
	xprt = FUNC3(sock);
	for (prognum = 0x40000000; prognum < 0x5FFFFFFF; prognum++) {
		if (FUNC2(xprt, prognum, 1,
		    yppush_xfrrespprog_1, IPPROTO_UDP) == TRUE)
			break;
	}
	if (prognum == 0x5FFFFFFF) {
		FUNC4 ("can't register yppush_xfrrespprog_1");
		FUNC5 (1);
	}

	/* Initialize the info for this job. */
	job->stat = 0;
	job->tid = tid;
	job->port = xprt->xp_port;
	job->server = FUNC1(server);
	job->map = FUNC1(map);
	job->prognum = prognum;
	job->polled = 0;
	job->next = yppush_joblist;
	yppush_joblist = job;

	if (verbose) {
		FUNC4("initiating transfer: %s -> %s (transid = %lu)",
			yppush_mapname, server, tid);
	}

	/*
	 * Send the XFR request to ypserv. We don't have to wait for
	 * a response here since we handle them asynchronously.
	 */

	if (FUNC6(job)){
		/* Transfer request blew up. */
		FUNC7(job->stat ? job->stat :
			YPPUSH_YPSERV,job->tid);
	} else {
		if (verbose > 1)
			FUNC4("%s has been called", server);
	}

	return(0);
}