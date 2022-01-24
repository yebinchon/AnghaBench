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
typedef  int u16 ;
struct vfpf_vport_update_accept_any_vlan_tlv {int /*<<< orphan*/  update_accept_any_vlan_flg; int /*<<< orphan*/  accept_any_vlan; } ;
struct ecore_sp_vport_update_params {int /*<<< orphan*/  update_accept_any_vlan_flg; int /*<<< orphan*/  accept_any_vlan; } ;
struct ecore_iov_vf_mbx {int /*<<< orphan*/  req_virt; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int CHANNEL_TLV_VPORT_UPDATE_ACCEPT_ANY_VLAN ; 
 int ECORE_IOV_VP_UPDATE_ACCEPT_ANY_VLAN ; 
 scalar_t__ FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct ecore_hwfn *p_hwfn,
				    struct ecore_sp_vport_update_params *p_data,
				    struct ecore_iov_vf_mbx *p_mbx,
				    u16 *tlvs_mask)
{
	struct vfpf_vport_update_accept_any_vlan_tlv *p_accept_any_vlan;
	u16 tlv = CHANNEL_TLV_VPORT_UPDATE_ACCEPT_ANY_VLAN;

	p_accept_any_vlan = (struct vfpf_vport_update_accept_any_vlan_tlv *)
			    FUNC0(p_hwfn, p_mbx->req_virt,
						       tlv);
	if (!p_accept_any_vlan)
		return;

	p_data->accept_any_vlan = p_accept_any_vlan->accept_any_vlan;
	p_data->update_accept_any_vlan_flg =
			p_accept_any_vlan->update_accept_any_vlan_flg;
	*tlvs_mask |= 1 << ECORE_IOV_VP_UPDATE_ACCEPT_ANY_VLAN;
}