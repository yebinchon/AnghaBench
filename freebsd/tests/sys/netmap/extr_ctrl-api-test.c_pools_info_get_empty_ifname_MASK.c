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
struct TestContext {int /*<<< orphan*/  ifname_ext; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct TestContext*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC2(struct TestContext *ctx)
{
	FUNC1(ctx->ifname_ext, "", sizeof(ctx->ifname_ext));
	return FUNC0(ctx) != 0 ? 0 : -1;
}