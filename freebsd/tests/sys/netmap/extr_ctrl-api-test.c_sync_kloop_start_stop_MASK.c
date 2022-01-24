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
struct TestContext {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 void* THRET_FAILURE ; 
 void* THRET_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct TestContext*) ; 
 int FUNC2 (int /*<<< orphan*/ ,void**) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (struct TestContext*) ; 
 int /*<<< orphan*/  sync_kloop_worker ; 

__attribute__((used)) static int
FUNC5(struct TestContext *ctx)
{
	pthread_t th;
	void *thret = THRET_FAILURE;
	int ret;

	ret = FUNC1(&th, NULL, sync_kloop_worker, ctx);
	if (ret != 0) {
		FUNC0("pthread_create(kloop): %s\n", FUNC3(ret));
		return -1;
	}

	ret = FUNC4(ctx);
	if (ret != 0) {
		return ret;
	}

	ret = FUNC2(th, &thret);
	if (ret != 0) {
		FUNC0("pthread_join(kloop): %s\n", FUNC3(ret));
	}

	return thret == THRET_SUCCESS ? 0 : -1;
}