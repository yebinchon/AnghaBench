#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ecore_mcp_link_state {int link_up; int speed; } ;
struct ecore_mcp_link_params {int link_up; int speed; } ;
struct ecore_mcp_link_capabilities {int link_up; int speed; } ;
struct ecore_hwfn {TYPE_2__* p_dev; int /*<<< orphan*/  pf_iov_info; } ;
struct TYPE_8__ {scalar_t__ link_up; } ;
typedef  TYPE_3__ qlnx_host_t ;
typedef  int /*<<< orphan*/  params ;
typedef  int /*<<< orphan*/  link ;
typedef  int /*<<< orphan*/  caps ;
struct TYPE_7__ {int num_hwfns; TYPE_1__* p_iov_info; } ;
struct TYPE_6__ {int total_vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,struct ecore_mcp_link_state*,struct ecore_mcp_link_state*,struct ecore_mcp_link_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_mcp_link_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_mcp_link_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*) ; 

__attribute__((used)) static void
FUNC8(struct ecore_hwfn *p_hwfn, qlnx_host_t *ha)
{
	struct ecore_mcp_link_capabilities caps;
	struct ecore_mcp_link_params params;
	struct ecore_mcp_link_state link;
	int i;

	if (!p_hwfn->pf_iov_info)
		return;

	FUNC6(&params, 0, sizeof(struct ecore_mcp_link_params));
	FUNC6(&link, 0, sizeof(struct ecore_mcp_link_state));
	FUNC6(&caps, 0, sizeof(struct ecore_mcp_link_capabilities));

	FUNC5(&caps, FUNC2(p_hwfn), sizeof(caps));
        FUNC5(&link, FUNC4(p_hwfn), sizeof(link));
        FUNC5(&params, FUNC3(p_hwfn), sizeof(params));

	FUNC0(ha, "called\n");

        /* Update bulletin of all future possible VFs with link configuration */
        for (i = 0; i < p_hwfn->p_dev->p_iov_info->total_vfs; i++) {

                /* Modify link according to the VF's configured link state */

                link.link_up = false;

                if (ha->link_up) {
                        link.link_up = true;
                        /* Set speed according to maximum supported by HW.
                         * that is 40G for regular devices and 100G for CMT
                         * mode devices.
                         */
                        link.speed = (p_hwfn->p_dev->num_hwfns > 1) ?
						100000 : link.speed;
		}
		FUNC0(ha, "link [%d] = %d\n", i, link.link_up);
                FUNC1(p_hwfn, i, &params, &link, &caps);
        }

	FUNC7(p_hwfn);

	return;
}