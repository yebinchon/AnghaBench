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
typedef  int /*<<< orphan*/  u16 ;
struct xgbe_prv_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RATECHANGE ; 
 int /*<<< orphan*/  RESETB_RXD ; 
 int /*<<< orphan*/  RXTX_REG6 ; 
 int /*<<< orphan*/  RX_READY ; 
 int /*<<< orphan*/  SIR0_STATUS ; 
 int /*<<< orphan*/  SIR1_SPEED ; 
 int /*<<< orphan*/  TX_READY ; 
 unsigned int XGBE_RATECHANGE_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct xgbe_prv_data *pdata)
{
	unsigned int wait;
	u16 status;

	/* Release Rx and Tx ratechange */
	FUNC3(pdata, SIR1_SPEED, RATECHANGE, 0);

	/* Wait for Rx and Tx ready */
	wait = XGBE_RATECHANGE_COUNT;
	while (wait--) {
		FUNC0(50);

		status = FUNC2(pdata, SIR0_STATUS);
		if (FUNC4(status, SIR0_STATUS, RX_READY) &&
		    FUNC4(status, SIR0_STATUS, TX_READY))
			goto rx_reset;
	}

rx_reset:
	/* Perform Rx reset for the DFE changes */
	FUNC1(pdata, RXTX_REG6, RESETB_RXD, 0);
	FUNC1(pdata, RXTX_REG6, RESETB_RXD, 1);
}