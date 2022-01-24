#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tx_fifo_size; } ;
struct xgbe_prv_data {unsigned int tx_q_count; TYPE_1__ hw_feat; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTL_Q_TQOMR ; 
 int /*<<< orphan*/  TQS ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct xgbe_prv_data *pdata)
{
	unsigned int fifo_size;
	unsigned int i;

	fifo_size = FUNC1(pdata->hw_feat.tx_fifo_size,
						  pdata->tx_q_count);

	for (i = 0; i < pdata->tx_q_count; i++)
		FUNC0(pdata, i, MTL_Q_TQOMR, TQS, fifo_size);
}