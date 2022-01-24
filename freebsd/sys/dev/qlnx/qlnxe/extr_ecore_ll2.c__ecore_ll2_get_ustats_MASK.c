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
typedef  int /*<<< orphan*/  ustats ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_ll2_stats {int /*<<< orphan*/  rcv_bcast_pkts; int /*<<< orphan*/  rcv_mcast_pkts; int /*<<< orphan*/  rcv_ucast_pkts; int /*<<< orphan*/  rcv_bcast_bytes; int /*<<< orphan*/  rcv_mcast_bytes; int /*<<< orphan*/  rcv_ucast_bytes; } ;
struct ecore_ll2_info {int /*<<< orphan*/  queue_id; } ;
struct ecore_hwfn {int dummy; } ;
struct core_ll2_ustorm_per_queue_stat {int /*<<< orphan*/  rcv_bcast_pkts; int /*<<< orphan*/  rcv_mcast_pkts; int /*<<< orphan*/  rcv_ucast_pkts; int /*<<< orphan*/  rcv_bcast_bytes; int /*<<< orphan*/  rcv_mcast_bytes; int /*<<< orphan*/  rcv_ucast_bytes; } ;

/* Variables and functions */
 scalar_t__ BAR0_MAP_REG_USDM_RAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct core_ll2_ustorm_per_queue_stat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,struct core_ll2_ustorm_per_queue_stat*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct ecore_hwfn *p_hwfn,
				  struct ecore_ptt *p_ptt,
				  struct ecore_ll2_info *p_ll2_conn,
				  struct ecore_ll2_stats *p_stats)
{
	struct core_ll2_ustorm_per_queue_stat ustats;
	u8 qid = p_ll2_conn->queue_id;
	u32 ustats_addr;

	FUNC2(&ustats, 0, sizeof(ustats));
	ustats_addr = BAR0_MAP_REG_USDM_RAM +
		      FUNC0(qid);
	FUNC3(p_hwfn, p_ptt, &ustats,
			  ustats_addr,
			  sizeof(ustats));

	p_stats->rcv_ucast_bytes += FUNC1(ustats.rcv_ucast_bytes);
	p_stats->rcv_mcast_bytes += FUNC1(ustats.rcv_mcast_bytes);
	p_stats->rcv_bcast_bytes += FUNC1(ustats.rcv_bcast_bytes);
	p_stats->rcv_ucast_pkts += FUNC1(ustats.rcv_ucast_pkts);
	p_stats->rcv_mcast_pkts += FUNC1(ustats.rcv_mcast_pkts);
	p_stats->rcv_bcast_pkts += FUNC1(ustats.rcv_bcast_pkts);
}