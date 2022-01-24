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
struct nmreq_opt_csb {int dummy; } ;
struct TestContext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct TestContext*) ; 
 int FUNC1 (struct TestContext*) ; 
 int FUNC2 (struct TestContext*,struct nmreq_opt_csb*) ; 
 int FUNC3 (struct TestContext*) ; 

__attribute__((used)) static int
FUNC4(struct TestContext *ctx)
{
	struct nmreq_opt_csb opt;
	int ret;

	ret = FUNC2(ctx, &opt);
	if (ret != 0) {
		return ret;
	}

	ret = FUNC1(ctx);
	if (ret != 0) {
		return ret;
	}
	FUNC0(ctx);

	return FUNC3(ctx);
}