#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  size_t u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ah_txq; } ;
struct TYPE_3__ {scalar_t__ tqi_type; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int AR_Q_STS_PEND_FR_CNT_M ; 
 int /*<<< orphan*/  AR_Q_TXE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t HAL_NUM_TX_QUEUES ; 
 scalar_t__ HAL_TX_QUEUE_INACTIVE ; 
 int FUNC3 (struct ath_hal*,int /*<<< orphan*/ ) ; 

uint32_t
FUNC4(struct ath_hal *ah, u_int q)
{
	uint32_t n;

	FUNC2(q < HAL_NUM_TX_QUEUES);
	FUNC2(FUNC0(ah)->ah_txq[q].tqi_type != HAL_TX_QUEUE_INACTIVE);

	n = FUNC3(ah, FUNC1(q)) & AR_Q_STS_PEND_FR_CNT_M;
	/*
	 * Pending frame count (PFC) can momentarily go to zero
	 * while TXE remains asserted.  In other words a PFC of
	 * zero is not sufficient to say that the queue has stopped.
	 */
	if (n == 0 && (FUNC3(ah, AR_Q_TXE) & (1<<q)))
		n = 1;			/* arbitrarily pick 1 */
	return n;
}