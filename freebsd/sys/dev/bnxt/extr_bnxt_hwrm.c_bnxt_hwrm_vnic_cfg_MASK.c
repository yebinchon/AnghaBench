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
struct hwrm_vnic_cfg_input {void* mru; void* lb_rule; void* cos_rule; void* rss_rule; void* dflt_ring_grp; void* vnic_id; int /*<<< orphan*/  enables; int /*<<< orphan*/  flags; int /*<<< orphan*/  member_0; } ;
struct bnxt_vnic_info {int flags; int /*<<< orphan*/  mru; int /*<<< orphan*/  lb_rule; int /*<<< orphan*/  cos_rule; int /*<<< orphan*/  rss_id; int /*<<< orphan*/  def_ring_grp; int /*<<< orphan*/  id; } ;
struct bnxt_softc {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int BNXT_VNIC_FLAG_BD_STALL ; 
 int BNXT_VNIC_FLAG_DEFAULT ; 
 int BNXT_VNIC_FLAG_VLAN_STRIP ; 
 int /*<<< orphan*/  HWRM_VNIC_CFG ; 
 int HWRM_VNIC_CFG_INPUT_ENABLES_DFLT_RING_GRP ; 
 int HWRM_VNIC_CFG_INPUT_ENABLES_MRU ; 
 int HWRM_VNIC_CFG_INPUT_ENABLES_RSS_RULE ; 
 int HWRM_VNIC_CFG_INPUT_FLAGS_BD_STALL_MODE ; 
 int HWRM_VNIC_CFG_INPUT_FLAGS_DEFAULT ; 
 int HWRM_VNIC_CFG_INPUT_FLAGS_VLAN_STRIP_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*,struct hwrm_vnic_cfg_input*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct bnxt_softc*,struct hwrm_vnic_cfg_input*,int) ; 

int
FUNC4(struct bnxt_softc *softc, struct bnxt_vnic_info *vnic)
{
	struct hwrm_vnic_cfg_input req = {0};

	FUNC0(softc, &req, HWRM_VNIC_CFG);

	if (vnic->flags & BNXT_VNIC_FLAG_DEFAULT)
		req.flags |= FUNC2(HWRM_VNIC_CFG_INPUT_FLAGS_DEFAULT);
	if (vnic->flags & BNXT_VNIC_FLAG_BD_STALL)
		req.flags |= FUNC2(HWRM_VNIC_CFG_INPUT_FLAGS_BD_STALL_MODE);
	if (vnic->flags & BNXT_VNIC_FLAG_VLAN_STRIP)
		req.flags |= FUNC2(HWRM_VNIC_CFG_INPUT_FLAGS_VLAN_STRIP_MODE);
	req.enables = FUNC2(HWRM_VNIC_CFG_INPUT_ENABLES_DFLT_RING_GRP |
	    HWRM_VNIC_CFG_INPUT_ENABLES_RSS_RULE |
	    HWRM_VNIC_CFG_INPUT_ENABLES_MRU);
	req.vnic_id = FUNC1(vnic->id);
	req.dflt_ring_grp = FUNC1(vnic->def_ring_grp);
	req.rss_rule = FUNC1(vnic->rss_id);
	req.cos_rule = FUNC1(vnic->cos_rule);
	req.lb_rule = FUNC1(vnic->lb_rule);
	req.mru = FUNC1(vnic->mru);

	return FUNC3(softc, &req, sizeof(req));
}