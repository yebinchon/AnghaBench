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
struct TestContext {int nr_host_tx_rings; int nr_host_rx_rings; int nr_ringid; int /*<<< orphan*/  nr_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_REG_ONE_SW ; 
 int FUNC0 (struct TestContext*) ; 

__attribute__((used)) static int
FUNC1(struct TestContext *ctx)
{
	ctx->nr_mode   = NR_REG_ONE_SW;
	ctx->nr_host_tx_rings = 2;
	ctx->nr_host_rx_rings = 2;
	ctx->nr_ringid = 1;
	return FUNC0(ctx);
}