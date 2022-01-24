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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct al_eth_adapter {int /*<<< orphan*/  hal_adapter; } ;

/* Variables and functions */
 scalar_t__ AL_ETH_NUM_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(struct al_eth_adapter *adapter, uint8_t idx,
    uint8_t udma, uint32_t queue)
{

	if (udma != 0)
		FUNC1("only UDMA0 is supporter");

	if (queue >= AL_ETH_NUM_QUEUES)
		FUNC1("invalid queue number");

	FUNC0(&adapter->hal_adapter, idx, udma, queue);
}