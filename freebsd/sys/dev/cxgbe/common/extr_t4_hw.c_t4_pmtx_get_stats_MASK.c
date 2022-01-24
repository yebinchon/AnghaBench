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
typedef  int u64 ;
typedef  int u32 ;
struct adapter {TYPE_1__* chip_params; } ;
struct TYPE_2__ {int pm_stats_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PM_TX_DBG_CTRL ; 
 int /*<<< orphan*/  A_PM_TX_DBG_DATA ; 
 int /*<<< orphan*/  A_PM_TX_DBG_STAT_MSB ; 
 int /*<<< orphan*/  A_PM_TX_STAT_CONFIG ; 
 int /*<<< orphan*/  A_PM_TX_STAT_COUNT ; 
 int /*<<< orphan*/  A_PM_TX_STAT_LSB ; 
 scalar_t__ FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct adapter *adap, u32 cnt[], u64 cycles[])
{
	int i;
	u32 data[2];

	for (i = 0; i < adap->chip_params->pm_stats_cnt; i++) {
		FUNC4(adap, A_PM_TX_STAT_CONFIG, i + 1);
		cnt[i] = FUNC2(adap, A_PM_TX_STAT_COUNT);
		if (FUNC0(adap))
			cycles[i] = FUNC3(adap, A_PM_TX_STAT_LSB);
		else {
			FUNC1(adap, A_PM_TX_DBG_CTRL,
					 A_PM_TX_DBG_DATA, data, 2,
					 A_PM_TX_DBG_STAT_MSB);
			cycles[i] = (((u64)data[0] << 32) | data[1]);
		}
	}
}