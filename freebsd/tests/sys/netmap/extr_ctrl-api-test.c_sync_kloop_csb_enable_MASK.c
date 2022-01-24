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
struct TestContext {int /*<<< orphan*/  nr_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_EXCLUSIVE ; 
 int FUNC0 (struct TestContext*) ; 
 int FUNC1 (struct TestContext*) ; 
 int FUNC2 (struct TestContext*) ; 

__attribute__((used)) static int
FUNC3(struct TestContext *ctx)
{
	int ret;

	ctx->nr_flags |= NR_EXCLUSIVE;
	ret = FUNC1(ctx);
	if (ret != 0) {
		return ret;
	}

	ret = FUNC0(ctx);
	if (ret != 0) {
		return ret;
	}

	return FUNC2(ctx);
}