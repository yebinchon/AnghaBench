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
struct al_eth_ring {int cmpl_is_running; int /*<<< orphan*/  unmask_val; int /*<<< orphan*/  unmask_reg_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct al_eth_ring*) ; 
 scalar_t__ napi ; 

__attribute__((used)) static void
FUNC3(void *arg, int pending)
{
	struct al_eth_ring *tx_ring = arg;

	if (napi != 0) {
		tx_ring->cmpl_is_running = 1;
		FUNC0();
	}

	FUNC2(tx_ring);

	if (napi != 0) {
		tx_ring->cmpl_is_running = 0;
		FUNC0();
	}
	/* all work done, enable IRQs */
	FUNC1(tx_ring->unmask_reg_offset, tx_ring->unmask_val);
}