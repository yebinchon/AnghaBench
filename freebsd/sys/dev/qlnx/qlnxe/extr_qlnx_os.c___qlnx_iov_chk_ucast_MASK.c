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
struct ecore_public_vf_info {int /*<<< orphan*/  forced_mac; } ;
struct ecore_hwfn {scalar_t__ p_dev; } ;
struct ecore_filter_ucast {scalar_t__ type; int /*<<< orphan*/  mac; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 scalar_t__ ECORE_FILTER_MAC ; 
 scalar_t__ ECORE_FILTER_MAC_VLAN ; 
 int ECORE_INVAL ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct ecore_public_vf_info* FUNC1 (struct ecore_hwfn*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ecore_hwfn *p_hwfn, int vfid,
	struct ecore_filter_ucast *params)
{
        struct ecore_public_vf_info *vf;

	if (!FUNC2(p_hwfn, vfid)) {
		FUNC0(((qlnx_host_t *)p_hwfn->p_dev),
			"VF[%d] vport not initialized\n", vfid);
		return ECORE_INVAL;
	}

        vf = FUNC1(p_hwfn, vfid, true);
        if (!vf)
                return -EINVAL;

        /* No real decision to make; Store the configured MAC */
        if (params->type == ECORE_FILTER_MAC ||
            params->type == ECORE_FILTER_MAC_VLAN)
                FUNC3(params->mac, vf->forced_mac, ETH_ALEN);

        return 0;
}