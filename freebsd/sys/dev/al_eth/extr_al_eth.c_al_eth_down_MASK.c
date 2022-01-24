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
struct al_eth_adapter {int up; int /*<<< orphan*/  stats_mtx; int /*<<< orphan*/  stats_callout; int /*<<< orphan*/  wd_mtx; int /*<<< orphan*/  wd_callout; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct al_eth_adapter *adapter)
{

	FUNC6(adapter->dev, "al_eth_down: begin\n");

	adapter->up = false;

	FUNC7(&adapter->wd_mtx);
	FUNC5(&adapter->wd_callout);
	FUNC8(&adapter->wd_mtx);

	FUNC0(adapter);

	FUNC7(&adapter->stats_mtx);
	FUNC5(&adapter->stats_callout);
	FUNC8(&adapter->stats_mtx);

	FUNC3(adapter);
	FUNC4(adapter);

	FUNC2(adapter);
	FUNC1(adapter);
}