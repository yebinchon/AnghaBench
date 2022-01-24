#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int dummy; } ;
struct my_ctrs {scalar_t__ pkts; scalar_t__ bytes; scalar_t__ events; scalar_t__ min_space; int /*<<< orphan*/  t; } ;
struct glob_arg {int nthreads; int options; int* win; size_t win_idx; double framing; scalar_t__ dev_type; scalar_t__ td_type; int /*<<< orphan*/  report_interval; } ;
typedef  int /*<<< orphan*/  b4 ;
struct TYPE_3__ {scalar_t__ pkts; scalar_t__ bytes; scalar_t__ events; int min_space; } ;
struct TYPE_4__ {scalar_t__ used; scalar_t__ completed; int /*<<< orphan*/  toc; int /*<<< orphan*/  tic; TYPE_1__ ctr; int /*<<< orphan*/  fd; int /*<<< orphan*/ * nmd; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ DEV_NETMAP ; 
 int OPT_PPS_STATS ; 
 int STATS_WIN ; 
 scalar_t__ TD_TYPE_RECEIVER ; 
 scalar_t__ TD_TYPE_SENDER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  normalize ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*) ; 
 double FUNC7 (double) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 TYPE_2__* targs ; 
 int /*<<< orphan*/  FUNC9 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC10 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC11 (struct timeval*,struct timeval*,struct timeval*) ; 
 struct timeval FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,struct timespec*) ; 
 struct timespec FUNC14 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC15 (struct glob_arg*,struct my_ctrs*,double,char*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(struct glob_arg *g)
{
	int i;

	struct my_ctrs prev, cur;
	double delta_t;
	struct timeval tic, toc;

	prev.pkts = prev.bytes = prev.events = 0;
	FUNC2(&prev.t, NULL);
	for (;;) {
		char b1[40], b2[40], b3[40], b4[100];
		uint64_t pps, usec;
		struct my_ctrs x;
		double abs;
		int done = 0;

		usec = FUNC16(&prev.t, &cur.t,
				g->report_interval);

		cur.pkts = cur.bytes = cur.events = 0;
		cur.min_space = 0;
		if (usec < 10000) /* too short to be meaningful */
			continue;
		/* accumulate counts for all threads */
		for (i = 0; i < g->nthreads; i++) {
			cur.pkts += targs[i].ctr.pkts;
			cur.bytes += targs[i].ctr.bytes;
			cur.events += targs[i].ctr.events;
			cur.min_space += targs[i].ctr.min_space;
			targs[i].ctr.min_space = 99999;
			if (targs[i].used == 0)
				done++;
		}
		x.pkts = cur.pkts - prev.pkts;
		x.bytes = cur.bytes - prev.bytes;
		x.events = cur.events - prev.events;
		pps = (x.pkts*1000000 + usec/2) / usec;
		abs = (x.events > 0) ? (x.pkts / (double) x.events) : 0;

		if (!(g->options & OPT_PPS_STATS)) {
			FUNC8(b4, "");
		} else {
			/* Compute some pps stats using a sliding window. */
			double ppsavg = 0.0, ppsdev = 0.0;
			int nsamples = 0;

			g->win[g->win_idx] = pps;
			g->win_idx = (g->win_idx + 1) % STATS_WIN;

			for (i = 0; i < STATS_WIN; i++) {
				ppsavg += g->win[i];
				if (g->win[i]) {
					nsamples ++;
				}
			}
			ppsavg /= nsamples;

			for (i = 0; i < STATS_WIN; i++) {
				if (g->win[i] == 0) {
					continue;
				}
				ppsdev += (g->win[i] - ppsavg) * (g->win[i] - ppsavg);
			}
			ppsdev /= nsamples;
			ppsdev = FUNC7(ppsdev);

			FUNC6(b4, sizeof(b4), "[avg/std %s/%s pps]",
				 FUNC4(b1, ppsavg, normalize), FUNC4(b2, ppsdev, normalize));
		}

		FUNC0("%spps %s(%spkts %sbps in %llu usec) %.2f avg_batch %d min_space",
			FUNC4(b1, pps, normalize), b4,
			FUNC4(b2, (double)x.pkts, normalize),
			FUNC4(b3, 1000000*((double)x.bytes*8+(double)x.pkts*g->framing)/usec, normalize),
			(unsigned long long)usec,
			abs, (int)cur.min_space);
		prev = cur;

		if (done == g->nthreads)
			break;
	}

	FUNC9(&tic);
	FUNC9(&toc);
	cur.pkts = cur.bytes = cur.events = 0;
	/* final round */
	for (i = 0; i < g->nthreads; i++) {
		struct timespec t_tic, t_toc;
		/*
		 * Join active threads, unregister interfaces and close
		 * file descriptors.
		 */
		if (targs[i].used)
			FUNC5(targs[i].thread, NULL); /* blocking */
		if (g->dev_type == DEV_NETMAP) {
			FUNC3(targs[i].nmd);
			targs[i].nmd = NULL;
		} else {
			FUNC1(targs[i].fd);
		}

		if (targs[i].completed == 0)
			FUNC0("ouch, thread %d exited with error", i);

		/*
		 * Collect threads output and extract information about
		 * how long it took to send all the packets.
		 */
		cur.pkts += targs[i].ctr.pkts;
		cur.bytes += targs[i].ctr.bytes;
		cur.events += targs[i].ctr.events;
		/* collect the largest start (tic) and end (toc) times,
		 * XXX maybe we should do the earliest tic, or do a weighted
		 * average ?
		 */
		t_tic = FUNC14(&tic);
		t_toc = FUNC14(&toc);
		if (!FUNC10(&tic) || FUNC13(&targs[i].tic, &t_tic))
			tic = FUNC12(&targs[i].tic);
		if (!FUNC10(&toc) || FUNC13(&targs[i].toc, &t_toc))
			toc = FUNC12(&targs[i].toc);
	}

	/* print output. */
	FUNC11(&toc, &tic, &toc);
	delta_t = toc.tv_sec + 1e-6* toc.tv_usec;
	if (g->td_type == TD_TYPE_SENDER)
		FUNC15(g, &cur, delta_t, "Sent");
	else if (g->td_type == TD_TYPE_RECEIVER)
		FUNC15(g, &cur, delta_t, "Received");
}