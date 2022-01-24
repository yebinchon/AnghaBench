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
struct sfxge_rxq {int refill_delay; int /*<<< orphan*/  refill_callout; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct sfxge_rxq*) ; 
 int hz ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  sfxge_rx_post_refill ; 

__attribute__((used)) static void
FUNC2(struct sfxge_rxq *rxq, boolean_t retrying)
{
	/* Initially retry after 100 ms, but back off in case of
	 * repeated failures as we probably have to wait for the
	 * administrator to raise the pool limit. */
	if (retrying)
		rxq->refill_delay = FUNC1(rxq->refill_delay * 2, 10 * hz);
	else
		rxq->refill_delay = hz / 10;

	FUNC0(&rxq->refill_callout, rxq->refill_delay,
			     sfxge_rx_post_refill, rxq);
}