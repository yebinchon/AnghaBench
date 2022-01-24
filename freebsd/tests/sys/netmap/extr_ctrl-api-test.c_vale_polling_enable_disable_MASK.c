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
struct TestContext {int nr_num_polling_cpus; scalar_t__ nr_first_cpu_id; int /*<<< orphan*/  nr_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETMAP_POLLING_MODE_SINGLE_CPU ; 
 int FUNC0 (struct TestContext*) ; 
 int FUNC1 (struct TestContext*) ; 
 int FUNC2 (struct TestContext*) ; 
 int FUNC3 (struct TestContext*) ; 

__attribute__((used)) static int
FUNC4(struct TestContext *ctx)
{
	int ret = 0;

	if ((ret = FUNC0(ctx)) != 0) {
		return ret;
	}

	ctx->nr_mode             = NETMAP_POLLING_MODE_SINGLE_CPU;
	ctx->nr_num_polling_cpus = 1;
	ctx->nr_first_cpu_id     = 0;
	if ((ret = FUNC3(ctx))) {
		FUNC1(ctx);
#ifdef __FreeBSD__
		/* NETMAP_REQ_VALE_POLLING_DISABLE is disabled on FreeBSD,
		 * because it is currently broken. We are happy to see that
		 * it fails. */
		return 0;
#else
		return ret;
#endif
	}

	if ((ret = FUNC2(ctx))) {
		FUNC1(ctx);
		return ret;
	}

	return FUNC1(ctx);
}