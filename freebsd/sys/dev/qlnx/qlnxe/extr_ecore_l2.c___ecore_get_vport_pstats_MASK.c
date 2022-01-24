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
struct eth_pstorm_per_queue_stat {int /*<<< orphan*/  error_drop_pkts; int /*<<< orphan*/  sent_bcast_pkts; int /*<<< orphan*/  sent_mcast_pkts; int /*<<< orphan*/  sent_ucast_pkts; int /*<<< orphan*/  sent_bcast_bytes; int /*<<< orphan*/  sent_mcast_bytes; int /*<<< orphan*/  sent_ucast_bytes; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_err_drop_pkts; int /*<<< orphan*/  tx_bcast_pkts; int /*<<< orphan*/  tx_mcast_pkts; int /*<<< orphan*/  tx_ucast_pkts; int /*<<< orphan*/  tx_bcast_bytes; int /*<<< orphan*/  tx_mcast_bytes; int /*<<< orphan*/  tx_ucast_bytes; } ;
struct ecore_eth_stats {TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  pstats ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eth_pstorm_per_queue_stat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,struct eth_pstorm_per_queue_stat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ecore_hwfn *p_hwfn,
				     struct ecore_ptt *p_ptt,
				     struct ecore_eth_stats *p_stats,
				     u16 statistics_bin)
{
	struct eth_pstorm_per_queue_stat pstats;
	u32 pstats_addr = 0, pstats_len = 0;

	FUNC2(p_hwfn, &pstats_addr, &pstats_len,
					 statistics_bin);

	FUNC1(&pstats, 0, sizeof(pstats));
	FUNC3(p_hwfn, p_ptt, &pstats,
			  pstats_addr, pstats_len);

	p_stats->common.tx_ucast_bytes +=
		FUNC0(pstats.sent_ucast_bytes);
	p_stats->common.tx_mcast_bytes +=
		FUNC0(pstats.sent_mcast_bytes);
	p_stats->common.tx_bcast_bytes +=
		FUNC0(pstats.sent_bcast_bytes);
	p_stats->common.tx_ucast_pkts +=
		FUNC0(pstats.sent_ucast_pkts);
	p_stats->common.tx_mcast_pkts +=
		FUNC0(pstats.sent_mcast_pkts);
	p_stats->common.tx_bcast_pkts +=
		FUNC0(pstats.sent_bcast_pkts);
	p_stats->common.tx_err_drop_pkts +=
		FUNC0(pstats.error_drop_pkts);
}