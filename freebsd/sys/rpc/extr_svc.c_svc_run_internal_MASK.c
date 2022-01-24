#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct svc_req {long rq_size; TYPE_2__* rq_thread; } ;
struct proc {int p_flag; } ;
typedef  enum xprt_stat { ____Placeholder_xprt_stat } xprt_stat ;
typedef  scalar_t__ bool_t ;
struct TYPE_28__ {scalar_t__ sg_state; scalar_t__ sg_lastidlecheck; scalar_t__ sg_threadcount; scalar_t__ sg_maxthreads; scalar_t__ sg_minthreads; int /*<<< orphan*/  sg_lock; int /*<<< orphan*/  sg_active; int /*<<< orphan*/  sg_idlethreads; scalar_t__ sg_lastcreatetime; TYPE_3__* sg_pool; } ;
struct TYPE_27__ {TYPE_2__* (* sp_assign ) (TYPE_2__*,struct svc_req*) ;} ;
struct TYPE_26__ {int /*<<< orphan*/  st_cond; int /*<<< orphan*/  st_lock; int /*<<< orphan*/  st_reqs; TYPE_1__* st_xprt; TYPE_3__* st_pool; } ;
struct TYPE_25__ {scalar_t__ xp_active; TYPE_2__* xp_thread; scalar_t__ xp_lastactive; } ;
typedef  TYPE_1__ SVCXPRT ;
typedef  TYPE_2__ SVCTHREAD ;
typedef  TYPE_3__ SVCPOOL ;
typedef  TYPE_4__ SVCGROUP ;

/* Variables and functions */
 int EINTR ; 
 int ERESTART ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 scalar_t__ FUNC5 (struct proc*) ; 
 int P_TOTAL_STOP ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 struct svc_req* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct svc_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ SVCPOOL_ACTIVE ; 
 scalar_t__ SVCPOOL_CLOSING ; 
 scalar_t__ SVCPOOL_THREADSTARTING ; 
 scalar_t__ SVCPOOL_THREADWANTED ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int XPRT_MOREREQS ; 
 struct proc* curproc ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int hz ; 
 TYPE_2__* FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rq_link ; 
 int /*<<< orphan*/  st_ilink ; 
 TYPE_2__* FUNC26 (TYPE_2__*,struct svc_req*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*,long) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC29 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*) ; 
 int FUNC31 (TYPE_1__*,struct svc_req**) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_4__*) ; 
 scalar_t__ FUNC33 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 scalar_t__ time_uptime ; 
 int /*<<< orphan*/  FUNC35 (TYPE_4__*) ; 
 int /*<<< orphan*/  xp_alink ; 
 int /*<<< orphan*/  FUNC36 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC37(SVCGROUP *grp, bool_t ismaster)
{
	SVCPOOL *pool = grp->sg_pool;
	SVCTHREAD *st, *stpref;
	SVCXPRT *xprt;
	enum xprt_stat stat;
	struct svc_req *rqstp;
	struct proc *p;
	long sz;
	int error;

	st = FUNC20(sizeof(*st));
	FUNC23(&st->st_lock, "st_lock", NULL, MTX_DEF);
	st->st_pool = pool;
	st->st_xprt = NULL;
	FUNC8(&st->st_reqs);
	FUNC17(&st->st_cond, "rpcsvc");

	FUNC24(&grp->sg_lock);

	/*
	 * If we are a new thread which was spawned to cope with
	 * increased load, set the state back to SVCPOOL_ACTIVE.
	 */
	if (grp->sg_state == SVCPOOL_THREADSTARTING)
		grp->sg_state = SVCPOOL_ACTIVE;

	while (grp->sg_state != SVCPOOL_CLOSING) {
		/*
		 * Create new thread if requested.
		 */
		if (grp->sg_state == SVCPOOL_THREADWANTED) {
			grp->sg_state = SVCPOOL_THREADSTARTING;
			grp->sg_lastcreatetime = time_uptime;
			FUNC25(&grp->sg_lock);
			FUNC32(grp);
			FUNC24(&grp->sg_lock);
			continue;
		}

		/*
		 * Check for idle transports once per second.
		 */
		if (time_uptime > grp->sg_lastidlecheck) {
			grp->sg_lastidlecheck = time_uptime;
			FUNC28(grp);
		}

		xprt = st->st_xprt;
		if (!xprt) {
			/*
			 * Enforce maxthreads count.
			 */
			if (!ismaster && grp->sg_threadcount >
			    grp->sg_maxthreads)
				break;

			/*
			 * Before sleeping, see if we can find an
			 * active transport which isn't being serviced
			 * by a thread.
			 */
			if (FUNC33(pool) &&
			    (xprt = FUNC13(&grp->sg_active)) != NULL) {
				FUNC15(&grp->sg_active, xprt, xp_alink);
				FUNC11(xprt);
				xprt->xp_thread = st;
				st->st_xprt = xprt;
				continue;
			}

			FUNC1(&grp->sg_idlethreads, st, st_ilink);
			if (ismaster || (!ismaster &&
			    grp->sg_threadcount > grp->sg_minthreads))
				error = FUNC18(&st->st_cond,
				    &grp->sg_lock, 5 * hz);
			else
				error = FUNC19(&st->st_cond,
				    &grp->sg_lock);
			if (st->st_xprt == NULL)
				FUNC2(st, st_ilink);

			/*
			 * Reduce worker thread count when idle.
			 */
			if (error == EWOULDBLOCK) {
				if (!ismaster
				    && (grp->sg_threadcount
					> grp->sg_minthreads)
					&& !st->st_xprt)
					break;
			} else if (error != 0) {
				FUNC0(error == EINTR || error == ERESTART,
				    ("non-signal error %d", error));
				FUNC25(&grp->sg_lock);
				p = curproc;
				FUNC3(p);
				if (FUNC5(p) ||
				    (p->p_flag & P_TOTAL_STOP) != 0) {
					FUNC34(0);
					FUNC4(p);
					FUNC24(&grp->sg_lock);
				} else {
					FUNC4(p);
					FUNC30(pool);
					FUNC24(&grp->sg_lock);
					break;
				}
			}
			continue;
		}
		FUNC25(&grp->sg_lock);

		/*
		 * Drain the transport socket and queue up any RPCs.
		 */
		xprt->xp_lastactive = time_uptime;
		do {
			if (!FUNC33(pool))
				break;
			rqstp = NULL;
			stat = FUNC31(xprt, &rqstp);
			if (rqstp) {
				FUNC27(pool, rqstp->rq_size);
				/*
				 * See if the application has a preference
				 * for some other thread.
				 */
				if (pool->sp_assign) {
					stpref = pool->sp_assign(st, rqstp);
					rqstp->rq_thread = stpref;
					FUNC9(&stpref->st_reqs,
					    rqstp, rq_link);
					FUNC25(&stpref->st_lock);
					if (stpref != st)
						rqstp = NULL;
				} else {
					rqstp->rq_thread = st;
					FUNC9(&st->st_reqs,
					    rqstp, rq_link);
				}
			}
		} while (rqstp == NULL && stat == XPRT_MOREREQS
		    && grp->sg_state != SVCPOOL_CLOSING);

		/*
		 * Move this transport to the end of the active list to
		 * ensure fairness when multiple transports are active.
		 * If this was the last queued request, svc_getreq will end
		 * up calling xprt_inactive to remove from the active list.
		 */
		FUNC24(&grp->sg_lock);
		xprt->xp_thread = NULL;
		st->st_xprt = NULL;
		if (xprt->xp_active) {
			if (!FUNC33(pool) ||
			    !FUNC36(xprt))
				FUNC14(&grp->sg_active,
				    xprt, xp_alink);
		}
		FUNC25(&grp->sg_lock);
		FUNC12(xprt);

		/*
		 * Execute what we have queued.
		 */
		FUNC24(&st->st_lock);
		while ((rqstp = FUNC7(&st->st_reqs)) != NULL) {
			FUNC10(&st->st_reqs, rq_link);
			FUNC25(&st->st_lock);
			sz = (long)rqstp->rq_size;
			FUNC29(rqstp);
			FUNC27(pool, -sz);
			FUNC24(&st->st_lock);
		}
		FUNC25(&st->st_lock);
		FUNC24(&grp->sg_lock);
	}

	if (st->st_xprt) {
		xprt = st->st_xprt;
		st->st_xprt = NULL;
		FUNC12(xprt);
	}
	FUNC0(FUNC6(&st->st_reqs), ("stray reqs on exit"));
	FUNC22(&st->st_lock);
	FUNC16(&st->st_cond);
	FUNC21(st, sizeof(*st));

	grp->sg_threadcount--;
	if (!ismaster)
		FUNC35(grp);
	FUNC25(&grp->sg_lock);
}