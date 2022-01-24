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
struct ecore_sp_vport_start_params {int /*<<< orphan*/  zero_placement_offset; int /*<<< orphan*/  only_untagged; int /*<<< orphan*/  max_buffers_per_cqe; int /*<<< orphan*/  tpa_mode; int /*<<< orphan*/  remove_inner_vlan; int /*<<< orphan*/  mtu; int /*<<< orphan*/  vport_id; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ecore_hwfn*,struct ecore_sp_vport_start_params*) ; 
 int FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

enum _ecore_status_t FUNC3(struct ecore_hwfn *p_hwfn,
					  struct ecore_sp_vport_start_params *p_params)
{
	if (FUNC0(p_hwfn->p_dev))
		return FUNC2(p_hwfn, p_params->vport_id,
					       p_params->mtu,
					       p_params->remove_inner_vlan,
					       p_params->tpa_mode,
					       p_params->max_buffers_per_cqe,
					       p_params->only_untagged,
					       p_params->zero_placement_offset);

	return FUNC1(p_hwfn, p_params);
}