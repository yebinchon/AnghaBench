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
struct timespec {int tv_sec; } ;
struct nmreq_opt_csb {int dummy; } ;
struct TestContext {int /*<<< orphan*/ * sem; } ;
typedef  int /*<<< orphan*/  sem_t ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 void* THRET_FAILURE ; 
 void* THRET_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct TestContext*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int errno ; 
 int FUNC2 (struct TestContext*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct TestContext*) ; 
 int FUNC5 (int /*<<< orphan*/ ,void**) ; 
 int FUNC6 (struct TestContext*,struct nmreq_opt_csb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct timespec*) ; 
 char* FUNC10 (int) ; 
 int FUNC11 (struct TestContext*) ; 
 int /*<<< orphan*/  sync_kloop_worker ; 

__attribute__((used)) static int
FUNC12(struct TestContext *ctx)
{
	struct nmreq_opt_csb opt;
	pthread_t th1, th2;
	void *thret1 = THRET_FAILURE, *thret2 = THRET_FAILURE;
	struct timespec to;
	sem_t sem;
	int err = 0;
	int ret;

	ret = FUNC6(ctx, &opt);
	if (ret != 0) {
		return ret;
	}

	ret = FUNC2(ctx);
	if (ret != 0) {
		return ret;
	}
	FUNC0(ctx);

	ret = FUNC8(&sem, 0, 0);
	if (ret != 0) {
		FUNC3("sem_init() failed: %s\n", FUNC10(ret));
		return ret;
	}
	ctx->sem = &sem;

	ret = FUNC4(&th1, NULL, sync_kloop_worker, ctx);
	err |= ret;
	if (ret != 0) {
		FUNC3("pthread_create(kloop1): %s\n", FUNC10(ret));
	}

	ret = FUNC4(&th2, NULL, sync_kloop_worker, ctx);
	err |= ret;
	if (ret != 0) {
		FUNC3("pthread_create(kloop2): %s\n", FUNC10(ret));
	}

	/* Wait for one of the two threads to fail to start the kloop, to
	 * avoid a race condition where th1 starts the loop and stops,
	 * and after that th2 starts the loop successfully. */
	FUNC1(CLOCK_REALTIME, &to);
	to.tv_sec += 2;
	ret = FUNC9(&sem, &to);
	err |= ret;
	if (ret != 0) {
		FUNC3("sem_timedwait() failed: %s\n", FUNC10(errno));
	}

	err |= FUNC11(ctx);

	ret = FUNC5(th1, &thret1);
	err |= ret;
	if (ret != 0) {
		FUNC3("pthread_join(kloop1): %s\n", FUNC10(ret));
	}

	ret = FUNC5(th2, &thret2);
	err |= ret;
	if (ret != 0) {
		FUNC3("pthread_join(kloop2): %s %d\n", FUNC10(ret), ret);
	}

	FUNC7(&sem);
	ctx->sem = NULL;
	if (err) {
		return err;
	}

	/* Check that one of the two failed, while the other one succeeded. */
	return ((thret1 == THRET_SUCCESS && thret2 == THRET_FAILURE) ||
			(thret1 == THRET_FAILURE && thret2 == THRET_SUCCESS))
	               ? 0
	               : -1;
}