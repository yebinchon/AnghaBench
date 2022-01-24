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
typedef  int uint64_t ;
struct ena_admin_aenq_keep_alive_desc {int rx_drops_low; scalar_t__ rx_drops_high; } ;
struct ena_admin_aenq_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_drops; } ;
struct ena_adapter {int /*<<< orphan*/  keep_alive_timestamp; TYPE_1__ hw_stats; } ;
typedef  int /*<<< orphan*/  sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void *adapter_data,
    struct ena_admin_aenq_entry *aenq_e)
{
	struct ena_adapter *adapter = (struct ena_adapter *)adapter_data;
	struct ena_admin_aenq_keep_alive_desc *desc;
	sbintime_t stime;
	uint64_t rx_drops;

	desc = (struct ena_admin_aenq_keep_alive_desc *)aenq_e;

	rx_drops = ((uint64_t)desc->rx_drops_high << 32) | desc->rx_drops_low;
	FUNC2(adapter->hw_stats.rx_drops);
	FUNC1(adapter->hw_stats.rx_drops, rx_drops);

	stime = FUNC3();
	FUNC0(&adapter->keep_alive_timestamp, stime);
}