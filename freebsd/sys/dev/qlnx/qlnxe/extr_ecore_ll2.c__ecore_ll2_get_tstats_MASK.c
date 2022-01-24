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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  tstats ;
struct ecore_ptt {int dummy; } ;
struct ecore_ll2_stats {int /*<<< orphan*/  no_buff_discard; int /*<<< orphan*/  packet_too_big_discard; } ;
struct ecore_ll2_info {int /*<<< orphan*/  queue_id; } ;
struct ecore_hwfn {int dummy; } ;
struct core_ll2_tstorm_per_queue_stat {int /*<<< orphan*/  no_buff_discard; int /*<<< orphan*/  packet_too_big_discard; } ;

/* Variables and functions */
 scalar_t__ BAR0_MAP_REG_TSDM_RAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct core_ll2_tstorm_per_queue_stat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,struct core_ll2_tstorm_per_queue_stat*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct ecore_hwfn *p_hwfn,
				  struct ecore_ptt *p_ptt,
				  struct ecore_ll2_info *p_ll2_conn,
				  struct ecore_ll2_stats *p_stats)
{
	struct core_ll2_tstorm_per_queue_stat tstats;
	u8 qid = p_ll2_conn->queue_id;
	u32 tstats_addr;

	FUNC2(&tstats, 0, sizeof(tstats));
	tstats_addr = BAR0_MAP_REG_TSDM_RAM +
		      FUNC0(qid);
	FUNC3(p_hwfn, p_ptt, &tstats,
			  tstats_addr,
			  sizeof(tstats));

	p_stats->packet_too_big_discard +=
		FUNC1(tstats.packet_too_big_discard);
	p_stats->no_buff_discard +=
		FUNC1(tstats.no_buff_discard);
}