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
typedef  size_t uint16_t ;
struct em_rx_queue {int /*<<< orphan*/  eims; } ;
struct adapter {int /*<<< orphan*/  hw; struct em_rx_queue* rx_queues; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_EIMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adapter* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(if_ctx_t ctx, uint16_t rxqid)
{
	struct adapter *adapter = FUNC1(ctx);
	struct em_rx_queue *rxq = &adapter->rx_queues[rxqid];

	FUNC0(&adapter->hw, E1000_EIMS, rxq->eims);
	return (0);
}