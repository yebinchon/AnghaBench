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
struct pfvf_def_resp_tlv {int dummy; } ;
struct ecore_vf_info {int num_sbs; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/ * igu_sbs; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_TLV_INT_CLEANUP ; 
 int /*<<< orphan*/  PFVF_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ecore_hwfn *p_hwfn,
					 struct ecore_ptt *p_ptt,
					 struct ecore_vf_info *vf)
{
	int i;

	/* Reset the SBs */
	for (i = 0; i < vf->num_sbs; i++)
		FUNC0(p_hwfn, p_ptt,
						  vf->igu_sbs[i],
						  vf->opaque_fid, false);

	FUNC1(p_hwfn, p_ptt, vf, CHANNEL_TLV_INT_CLEANUP,
			       sizeof(struct pfvf_def_resp_tlv),
			       PFVF_STATUS_SUCCESS);
}