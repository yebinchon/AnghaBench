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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct eth_mstorm_per_queue_stat {int /*<<< orphan*/  tpa_coalesced_bytes; int /*<<< orphan*/  tpa_aborts_num; int /*<<< orphan*/  tpa_coalesced_events; int /*<<< orphan*/  tpa_coalesced_pkts; int /*<<< orphan*/  ttl0_discard; int /*<<< orphan*/  packet_too_big_discard; int /*<<< orphan*/  no_buff_discard; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tpa_coalesced_bytes; int /*<<< orphan*/  tpa_aborts_num; int /*<<< orphan*/  tpa_coalesced_events; int /*<<< orphan*/  tpa_coalesced_pkts; int /*<<< orphan*/  ttl0_discard; int /*<<< orphan*/  packet_too_big_discard; int /*<<< orphan*/  no_buff_discards; } ;
struct ecore_eth_stats {TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  mstats ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eth_mstorm_per_queue_stat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,struct eth_mstorm_per_queue_stat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ecore_hwfn *p_hwfn,
				     struct ecore_ptt *p_ptt,
				     struct ecore_eth_stats *p_stats,
				     u16 statistics_bin)
{
	struct eth_mstorm_per_queue_stat mstats;
	u32 mstats_addr = 0, mstats_len = 0;

	FUNC2(p_hwfn, &mstats_addr, &mstats_len,
					 statistics_bin);

	FUNC1(&mstats, 0, sizeof(mstats));
	FUNC3(p_hwfn, p_ptt, &mstats,
			  mstats_addr, mstats_len);

	p_stats->common.no_buff_discards +=
		FUNC0(mstats.no_buff_discard);
	p_stats->common.packet_too_big_discard +=
		FUNC0(mstats.packet_too_big_discard);
	p_stats->common.ttl0_discard +=
		FUNC0(mstats.ttl0_discard);
	p_stats->common.tpa_coalesced_pkts +=
		FUNC0(mstats.tpa_coalesced_pkts);
	p_stats->common.tpa_coalesced_events +=
		FUNC0(mstats.tpa_coalesced_events);
	p_stats->common.tpa_aborts_num +=
		FUNC0(mstats.tpa_aborts_num);
	p_stats->common.tpa_coalesced_bytes +=
		FUNC0(mstats.tpa_coalesced_bytes);
}