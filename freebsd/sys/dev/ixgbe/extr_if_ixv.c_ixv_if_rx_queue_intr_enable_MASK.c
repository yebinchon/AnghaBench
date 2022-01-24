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
typedef  size_t uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  me; } ;
struct ix_rx_queue {TYPE_1__ rxr; } ;
struct adapter {struct ix_rx_queue* rx_queues; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 struct adapter* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(if_ctx_t ctx, uint16_t rxqid)
{
	struct adapter	*adapter = FUNC0(ctx);
	struct ix_rx_queue *que = &adapter->rx_queues[rxqid];

	FUNC1(adapter, que->rxr.me);

	return (0);
}