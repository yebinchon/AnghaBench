#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  port; scalar_t__ b_update_port; } ;
struct TYPE_3__ {int /*<<< orphan*/  port; scalar_t__ b_update_port; } ;
struct ecore_tunnel_info {TYPE_2__ geneve_port; TYPE_1__ vxlan_port; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_tunnel_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ecore_hwfn *p_hwfn,
					struct ecore_ptt  *p_ptt,
					struct ecore_tunnel_info *p_tunn)
{
	if (FUNC1(p_hwfn->p_dev)) {
		FUNC0(p_hwfn, true,
			  "A0 chip: tunnel hw config is not supported\n");
		return;
	}

	if (p_tunn->vxlan_port.b_update_port)
		FUNC4(p_hwfn, p_ptt,
					  p_tunn->vxlan_port.port);

	if (p_tunn->geneve_port.b_update_port)
		FUNC2(p_hwfn, p_ptt,
					   p_tunn->geneve_port.port);

	FUNC3(p_hwfn, p_ptt, p_tunn);
}