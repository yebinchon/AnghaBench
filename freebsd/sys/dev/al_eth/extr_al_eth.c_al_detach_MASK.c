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
struct al_eth_adapter {int /*<<< orphan*/  udma_res; int /*<<< orphan*/  mac_res; int /*<<< orphan*/  ec_res; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  wd_mtx; int /*<<< orphan*/  stats_mtx; int /*<<< orphan*/  netdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct al_eth_adapter* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct al_eth_adapter *adapter;

	adapter = FUNC2(dev);
	FUNC3(adapter->netdev);

	FUNC4(&adapter->stats_mtx);
	FUNC4(&adapter->wd_mtx);

	FUNC0(adapter);

	FUNC1(dev, SYS_RES_IRQ,    0, adapter->irq_res);
	FUNC1(dev, SYS_RES_MEMORY, 0, adapter->ec_res);
	FUNC1(dev, SYS_RES_MEMORY, 0, adapter->mac_res);
	FUNC1(dev, SYS_RES_MEMORY, 0, adapter->udma_res);

	return (0);
}