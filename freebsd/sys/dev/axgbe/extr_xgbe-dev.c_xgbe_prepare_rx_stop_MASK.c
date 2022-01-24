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
struct xgbe_prv_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MTL_Q_RQDR ; 
 int /*<<< orphan*/  PRXQ ; 
 int /*<<< orphan*/  RXQSTS ; 
 unsigned long XGBE_DMA_STOP_TIMEOUT ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct xgbe_prv_data*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned long hz ; 
 unsigned long ticks ; 

__attribute__((used)) static void FUNC3(struct xgbe_prv_data *pdata,
				 unsigned int queue)
{
	unsigned int rx_status;
	unsigned long rx_timeout;

	/* The Rx engine cannot be stopped if it is actively processing
	 * packets. Wait for the Rx queue to empty the Rx fifo.  Don't
	 * wait forever though...
	 */
	rx_timeout = ticks + (XGBE_DMA_STOP_TIMEOUT * hz);
	while (ticks < rx_timeout) {
		rx_status = FUNC2(pdata, queue, MTL_Q_RQDR);
		if ((FUNC1(rx_status, MTL_Q_RQDR, PRXQ) == 0) &&
		    (FUNC1(rx_status, MTL_Q_RQDR, RXQSTS) == 0))
			break;

		FUNC0(500);
	}
}