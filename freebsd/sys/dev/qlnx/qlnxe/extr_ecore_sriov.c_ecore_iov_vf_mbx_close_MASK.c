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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct pfvf_def_resp_tlv {int dummy; } ;
struct ecore_vf_info {int dummy; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_TLV_CLOSE ; 
 int /*<<< orphan*/  PFVF_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ecore_hwfn *p_hwfn,
				   struct ecore_ptt *p_ptt,
				   struct ecore_vf_info	*vf)
{
	u16                      length = sizeof(struct pfvf_def_resp_tlv);
	u8                       status = PFVF_STATUS_SUCCESS;

	/* Disable Interrupts for VF */
	FUNC2(p_hwfn, p_ptt, vf, 0);

	/* Reset Permission table */
	FUNC0(p_hwfn, p_ptt, vf, 0);

	FUNC1(p_hwfn, p_ptt, vf, CHANNEL_TLV_CLOSE,
			       length, status);
}