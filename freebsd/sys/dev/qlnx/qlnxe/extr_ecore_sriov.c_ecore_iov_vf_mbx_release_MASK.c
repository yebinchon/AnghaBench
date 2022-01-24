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
struct ecore_vf_info {scalar_t__ state; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  concrete_fid; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_TLV_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,int) ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  PFVF_STATUS_FAILURE ; 
 int /*<<< orphan*/  PFVF_STATUS_SUCCESS ; 
 scalar_t__ VF_FREE ; 
 scalar_t__ VF_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_vf_info*) ; 
 int FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ecore_hwfn *p_hwfn,
				     struct ecore_ptt *p_ptt,
				     struct ecore_vf_info *p_vf)
{
	u16 length = sizeof(struct pfvf_def_resp_tlv);
	u8 status = PFVF_STATUS_SUCCESS;
	enum _ecore_status_t rc = ECORE_SUCCESS;

	FUNC2(p_hwfn, p_vf);

	if (p_vf->state != VF_STOPPED && p_vf->state != VF_FREE) {
		/* Stopping the VF */
		rc = FUNC3(p_hwfn, p_vf->concrete_fid,
				      p_vf->opaque_fid);

		if (rc != ECORE_SUCCESS) {
			FUNC0(p_hwfn, "ecore_sp_vf_stop returned error %d\n",
			       rc);
			status = PFVF_STATUS_FAILURE;
		}

		p_vf->state = VF_STOPPED;
	}

	FUNC1(p_hwfn, p_ptt, p_vf, CHANNEL_TLV_RELEASE,
			       length, status);
}