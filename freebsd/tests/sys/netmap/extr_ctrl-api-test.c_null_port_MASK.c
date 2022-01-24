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
struct TestContext {int nr_mem_id; int nr_tx_rings; int nr_rx_rings; int nr_tx_slots; int nr_rx_slots; int /*<<< orphan*/  nr_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_REG_NULL ; 
 int FUNC0 (struct TestContext*) ; 

__attribute__((used)) static int
FUNC1(struct TestContext *ctx)
{
	int ret;

	ctx->nr_mem_id = 1;
	ctx->nr_mode = NR_REG_NULL;
	ctx->nr_tx_rings = 10;
	ctx->nr_rx_rings = 5;
	ctx->nr_tx_slots = 256;
	ctx->nr_rx_slots = 100;
	ret = FUNC0(ctx);
	if (ret != 0) {
		return ret;
	}
	return 0;
}