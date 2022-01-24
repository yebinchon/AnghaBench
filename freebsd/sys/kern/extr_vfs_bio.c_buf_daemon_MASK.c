#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bufdomain {int bd_numdirtybuffers; int bd_lodirtybuffers; } ;
struct TYPE_3__ {int td_pflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BUF_DOMAINS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  PRI_USER ; 
 int /*<<< orphan*/  PVM ; 
 scalar_t__ SHUTDOWN_PRI_LAST ; 
 int TDP_BUFNEED ; 
 int TDP_NORUNNINGBUF ; 
 scalar_t__ bd_request ; 
 int bd_speedupreq ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  bdlock ; 
 int /*<<< orphan*/  bdlodirty ; 
 struct bufdomain* bdomain ; 
 int buf_domains ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct bufdomain*,int) ; 
 scalar_t__ bufspace_daemon ; 
 int /*<<< orphan*/  curproc ; 
 TYPE_1__* curthread ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (void (*) (void*),struct bufdomain*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  kthread_shutdown ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ lorunningspace ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 scalar_t__ runningbufspace ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  shutdown_pre_sync ; 

__attribute__((used)) static void
FUNC12()
{
	struct bufdomain *bd;
	int speedupreq;
	int lodirty;
	int i;

	/*
	 * This process needs to be suspended prior to shutdown sync.
	 */
	FUNC1(shutdown_pre_sync, kthread_shutdown, curthread,
	    SHUTDOWN_PRI_LAST + 100);

	/*
	 * Start the buf clean daemons as children threads.
	 */
	for (i = 0 ; i < buf_domains; i++) {
		int error;

		error = FUNC5((void (*)(void *))bufspace_daemon,
		    &bdomain[i], curproc, NULL, 0, 0, "bufspacedaemon-%d", i);
		if (error)
			FUNC10("error %d spawning bufspace daemon", error);
	}

	/*
	 * This process is allowed to take the buffer cache to the limit
	 */
	curthread->td_pflags |= TDP_NORUNNINGBUF | TDP_BUFNEED;
	FUNC8(&bdlock);
	for (;;) {
		bd_request = 0;
		FUNC9(&bdlock);

		FUNC6();

		/*
		 * Save speedupreq for this pass and reset to capture new
		 * requests.
		 */
		speedupreq = bd_speedupreq;
		bd_speedupreq = 0;

		/*
		 * Flush each domain sequentially according to its level and
		 * the speedup request.
		 */
		for (i = 0; i < buf_domains; i++) {
			bd = &bdomain[i];
			if (speedupreq)
				lodirty = bd->bd_numdirtybuffers / 2;
			else
				lodirty = bd->bd_lodirtybuffers;
			while (bd->bd_numdirtybuffers > lodirty) {
				if (FUNC3(NULL, bd,
				    bd->bd_numdirtybuffers - lodirty) == 0)
					break;
				FUNC4(PRI_USER);
			}
		}

		/*
		 * Only clear bd_request if we have reached our low water
		 * mark.  The buf_daemon normally waits 1 second and
		 * then incrementally flushes any dirty buffers that have
		 * built up, within reason.
		 *
		 * If we were unable to hit our low water mark and couldn't
		 * find any flushable buffers, we sleep for a short period
		 * to avoid endless loops on unlockable buffers.
		 */
		FUNC8(&bdlock);
		if (!FUNC0(BUF_DOMAINS, &bdlodirty)) {
			/*
			 * We reached our low water mark, reset the
			 * request and sleep until we are needed again.
			 * The sleep is just so the suspend code works.
			 */
			bd_request = 0;
			/*
			 * Do an extra wakeup in case dirty threshold
			 * changed via sysctl and the explicit transition
			 * out of shortfall was missed.
			 */
			FUNC2();
			if (runningbufspace <= lorunningspace)
				FUNC11();
			FUNC7(&bd_request, &bdlock, PVM, "psleep", hz);
		} else {
			/*
			 * We couldn't find any flushable dirty buffers but
			 * still have too many dirty buffers, we
			 * have to sleep and try again.  (rare)
			 */
			FUNC7(&bd_request, &bdlock, PVM, "qsleep", hz / 10);
		}
	}
}