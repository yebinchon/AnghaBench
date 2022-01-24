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
typedef  int /*<<< orphan*/  setmask ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  cpusetid_t ;
typedef  int /*<<< orphan*/  cpuset_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CPU_LEVEL_CPUSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CPU_WHICH_CPUSET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PROC_REAP_ACQUIRE ; 
 int /*<<< orphan*/  PT_CONTINUE ; 
 int /*<<< orphan*/  P_PID ; 
 scalar_t__ SIGKILL ; 
 scalar_t__ SIGSTOP ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  raise_sigstop_thread ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  sleep_thread ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ FUNC21 (int*) ; 
 scalar_t__ FUNC22 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC23(bool sigstop_from_main_thread)
{
	pid_t fpid, wpid;
	int status, i;
	cpuset_t setmask;
	cpusetid_t setid;
	pthread_t t;

	/*
	 * Become the reaper for this process tree. We need to be able to check
	 * that both child and grandchild have died.
	 */
	FUNC0(FUNC15(P_PID, FUNC14(), PROC_REAP_ACQUIRE, NULL) == 0);

	fpid = FUNC13();
	FUNC0(fpid >= 0);
	if (fpid == 0) {
		fpid = FUNC13();
		FUNC1(fpid >= 0);
		if (fpid == 0) {
			FUNC20();

			/* Pin to CPU 0 to serialize thread execution. */
			FUNC3(&setmask);
			FUNC2(0, &setmask);
			FUNC1(FUNC10(&setid) == 0);
			FUNC1(FUNC11(CPU_LEVEL_CPUSET,
			    CPU_WHICH_CPUSET, setid,
			    sizeof(setmask), &setmask) == 0);

			if (sigstop_from_main_thread) {
				/*
				 * We expect the SIGKILL sent when our parent
				 * dies to be delivered to the new thread.
				 * Raise the SIGSTOP in this thread so the
				 * threads compete.
				 */
				FUNC1(FUNC16(&t, NULL,
				    sleep_thread, NULL) == 0);
				FUNC18(SIGSTOP);
			} else {
				/*
				 * We expect the SIGKILL to be delivered to
				 * this thread. After creating the new thread,
				 * just get off the CPU so the other thread can
				 * raise the SIGSTOP.
				 */
				FUNC1(FUNC16(&t, NULL,
				    raise_sigstop_thread, NULL) == 0);
				FUNC19(60);
			}

			FUNC12(0);
		}
		/* First stop is trace_me() immediately after fork. */
		wpid = FUNC22(fpid, &status, 0);
		FUNC1(wpid == fpid);
		FUNC1(FUNC7(status));
		FUNC1(FUNC8(status) == SIGSTOP);

		FUNC1(FUNC17(PT_CONTINUE, fpid, (caddr_t)1, 0) == 0);

		/* Second stop is from the raise(SIGSTOP). */
		wpid = FUNC22(fpid, &status, 0);
		FUNC1(wpid == fpid);
		FUNC1(FUNC7(status));
		FUNC1(FUNC8(status) == SIGSTOP);

		/*
		 * Terminate tracing process without detaching. Our child
		 * should be killed.
		 */
		FUNC12(0);
	}

	/*
	 * We should get a normal exit from our immediate child and a SIGKILL
	 * exit from our grandchild. The latter case is the interesting one.
	 * Our grandchild should not have stopped due to the SIGSTOP that was
	 * left dangling when its parent died.
	 */
	for (i = 0; i < 2; ++i) {
		wpid = FUNC21(&status);
		if (wpid == fpid)
			FUNC0(FUNC5(status) &&
			    FUNC4(status) == 0);
		else
			FUNC0(FUNC6(status) &&
			    FUNC9(status) == SIGKILL);
	}
}