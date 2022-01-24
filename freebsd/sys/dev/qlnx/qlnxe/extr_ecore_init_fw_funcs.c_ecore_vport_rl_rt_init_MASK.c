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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct init_qm_vport_params {int vport_rl; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 scalar_t__ MAX_QM_GLOBAL_RLS ; 
 scalar_t__ QM_REG_RLGLBLCRD_RT_OFFSET ; 
 scalar_t__ QM_REG_RLGLBLINCVAL_RT_OFFSET ; 
 scalar_t__ QM_REG_RLGLBLUPPERBOUND_RT_OFFSET ; 
 scalar_t__ QM_RL_CRD_REG_SIGN_BIT ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC5(struct ecore_hwfn *p_hwfn,
								  u8 start_vport,
								  u8 num_vports,
								  u32 link_speed,
								  struct init_qm_vport_params *vport_params)
{
	u8 i, vport_id;
	u32 inc_val;

	if (start_vport + num_vports >= MAX_QM_GLOBAL_RLS) {
		FUNC0(p_hwfn, true, "Invalid VPORT ID for rate limiter configuration\n");
		return -1;
	}

	/* Go over all PF VPORTs */
	for (i = 0, vport_id = start_vport; i < num_vports; i++, vport_id++) {
		inc_val = FUNC1(vport_params[i].vport_rl ? vport_params[i].vport_rl : link_speed);
		if (inc_val > FUNC2(link_speed)) {
			FUNC0(p_hwfn, true, "Invalid VPORT rate-limit configuration\n");
			return -1;
		}

		FUNC4(p_hwfn, QM_REG_RLGLBLCRD_RT_OFFSET + vport_id, (u32)QM_RL_CRD_REG_SIGN_BIT);
		FUNC4(p_hwfn, QM_REG_RLGLBLUPPERBOUND_RT_OFFSET + vport_id, FUNC3(link_speed) | (u32)QM_RL_CRD_REG_SIGN_BIT);
		FUNC4(p_hwfn, QM_REG_RLGLBLINCVAL_RT_OFFSET + vport_id, inc_val);
	}

	return 0;
}