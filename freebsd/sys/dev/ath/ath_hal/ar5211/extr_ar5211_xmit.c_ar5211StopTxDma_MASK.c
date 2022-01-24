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
typedef  size_t u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ah_txq; } ;
struct TYPE_3__ {scalar_t__ tqi_type; } ;
typedef  int HAL_BOOL ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_Q_TXD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t HAL_NUM_TX_QUEUES ; 
 scalar_t__ HAL_TX_QUEUE_INACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct ath_hal*,size_t) ; 

HAL_BOOL
FUNC5(struct ath_hal *ah, u_int q)
{
	int i;

	FUNC1(q < HAL_NUM_TX_QUEUES);
	FUNC1(FUNC0(ah)->ah_txq[q].tqi_type != HAL_TX_QUEUE_INACTIVE);

	FUNC3(ah, AR_Q_TXD, 1<<q);
	for (i = 0; i < 10000; i++) {
		if (FUNC4(ah, q) == 0)
			break;
		FUNC2(10);
	}
	FUNC3(ah, AR_Q_TXD, 0);

	return (i < 10000);
}