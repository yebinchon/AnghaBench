#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_8__ {TYPE_2__* ah_txq; } ;
struct TYPE_5__ {size_t halTotalQueues; } ;
struct TYPE_7__ {TYPE_1__ ah_caps; } ;
struct TYPE_6__ {scalar_t__ tqi_type; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct ath_hal*) ; 
 TYPE_3__* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  AR_Q_TXE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ HAL_TX_QUEUE_INACTIVE ; 
 int FUNC4 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HAL_BOOL
FUNC6(struct ath_hal *ah, u_int q, uint32_t txdp)
{
	FUNC3(q < FUNC1(ah)->ah_caps.halTotalQueues);
	FUNC3(FUNC0(ah)->ah_txq[q].tqi_type != HAL_TX_QUEUE_INACTIVE);

	/*
	 * Make sure that TXE is deasserted before setting the TXDP.  If TXE
	 * is still asserted, setting TXDP will have no effect.
	 */
	FUNC3((FUNC4(ah, AR_Q_TXE) & (1 << q)) == 0);

	FUNC5(ah, FUNC2(q), txdp);

	return AH_TRUE;
}