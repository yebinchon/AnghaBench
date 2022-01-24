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
struct TestContext {int nr_mem_id; int /*<<< orphan*/  nr_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_REG_ONE_NIC ; 
 int FUNC0 (struct TestContext*) ; 
 int FUNC1 (struct TestContext*) ; 

__attribute__((used)) static int
FUNC2(struct TestContext *ctx)
{
	int ret;

	/* Check that we can get pools info before we register
	 * a netmap interface. */
	ret = FUNC0(ctx);
	if (ret != 0) {
		return ret;
	}

	ctx->nr_mode = NR_REG_ONE_NIC;
	ret          = FUNC1(ctx);
	if (ret != 0) {
		return ret;
	}
	ctx->nr_mem_id = 1;

	/* Check that we can get pools info also after we register. */
	return FUNC0(ctx);
}