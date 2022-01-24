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
struct TYPE_2__ {size_t vf_id; scalar_t__ rx; int /*<<< orphan*/  stats; int /*<<< orphan*/  idx; int /*<<< orphan*/  msg; } ;
union nic_mbx {TYPE_1__ bgx_stats; } ;
struct nicpf {int /*<<< orphan*/  node; int /*<<< orphan*/ * vf_lmac_map; } ;
struct bgx_stats_msg {size_t vf_id; scalar_t__ rx; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIC_MBOX_MSG_BGX_STATS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nicpf*,size_t,union nic_mbx*) ; 

__attribute__((used)) static void
FUNC5(struct nicpf *nic, struct bgx_stats_msg *bgx)
{
	int bgx_idx, lmac;
	union nic_mbx mbx = {};

	bgx_idx = FUNC0(nic->vf_lmac_map[bgx->vf_id]);
	lmac = FUNC1(nic->vf_lmac_map[bgx->vf_id]);

	mbx.bgx_stats.msg = NIC_MBOX_MSG_BGX_STATS;
	mbx.bgx_stats.vf_id = bgx->vf_id;
	mbx.bgx_stats.rx = bgx->rx;
	mbx.bgx_stats.idx = bgx->idx;
	if (bgx->rx != 0) {
		mbx.bgx_stats.stats =
		    FUNC2(nic->node, bgx_idx, lmac, bgx->idx);
	} else {
		mbx.bgx_stats.stats =
		    FUNC3(nic->node, bgx_idx, lmac, bgx->idx);
	}
	FUNC4(nic, bgx->vf_id, &mbx);
}