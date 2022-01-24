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
typedef  int /*<<< orphan*/  uint8_t ;
struct ecore_public_vf_info {scalar_t__ forced_vlan; int /*<<< orphan*/  forced_mac; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 struct ecore_public_vf_info* FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ecore_hwfn *p_hwfn, uint8_t rel_vf_id)
{
        struct ecore_public_vf_info *vf_info;

        vf_info = FUNC0(p_hwfn, rel_vf_id, false);

        if (!vf_info)
                return;

        /* Clear the VF mac */
        FUNC1(vf_info->forced_mac, 0, ETH_ALEN);

        vf_info->forced_vlan = 0;

	return;
}