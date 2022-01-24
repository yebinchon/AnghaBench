#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  tstats ;
struct tstorm_per_port_stat {int /*<<< orphan*/  eth_mac_filter_discard; int /*<<< orphan*/  mftag_filter_discard; } ;
struct TYPE_5__ {int address; int len; } ;
struct TYPE_6__ {TYPE_1__ tstats; } ;
struct TYPE_7__ {TYPE_2__ stats_info; } ;
struct pfvf_acquire_resp_tlv {TYPE_3__ pfdev_info; } ;
struct ecore_vf_iov {struct pfvf_acquire_resp_tlv acquire_resp; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_vf_iov* vf_iov_info; int /*<<< orphan*/  p_dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  mac_filter_discards; int /*<<< orphan*/  mftag_filter_discards; } ;
struct ecore_eth_stats {TYPE_4__ common; } ;

/* Variables and functions */
 int BAR0_MAP_REG_TSDM_RAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct tstorm_per_port_stat*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*,struct tstorm_per_port_stat*,int,int) ; 

__attribute__((used)) static void FUNC6(struct ecore_hwfn *p_hwfn,
				     struct ecore_ptt *p_ptt,
				     struct ecore_eth_stats *p_stats)
{
	struct tstorm_per_port_stat tstats;
	u32 tstats_addr, tstats_len;

	if (FUNC1(p_hwfn->p_dev)) {
		tstats_addr = BAR0_MAP_REG_TSDM_RAM +
			      FUNC4(FUNC2(p_hwfn));
		tstats_len = sizeof(struct tstorm_per_port_stat);
	} else {
		struct ecore_vf_iov *p_iov = p_hwfn->vf_iov_info;
		struct pfvf_acquire_resp_tlv *p_resp = &p_iov->acquire_resp;

		tstats_addr = p_resp->pfdev_info.stats_info.tstats.address;
		tstats_len = p_resp->pfdev_info.stats_info.tstats.len;
	}

	FUNC3(&tstats, 0, sizeof(tstats));
	FUNC5(p_hwfn, p_ptt, &tstats,
			  tstats_addr, tstats_len);

	p_stats->common.mftag_filter_discards +=
		FUNC0(tstats.mftag_filter_discard);
	p_stats->common.mac_filter_discards +=
		FUNC0(tstats.eth_mac_filter_discard);
}