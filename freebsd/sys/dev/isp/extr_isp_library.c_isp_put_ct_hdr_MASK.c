#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_4__ {int /*<<< orphan*/  ct_vunique; int /*<<< orphan*/  ct_explanation; int /*<<< orphan*/  ct_reason; int /*<<< orphan*/  ct_reserved1; int /*<<< orphan*/  ct_bcnt_resid; int /*<<< orphan*/  ct_cmd_resp; int /*<<< orphan*/  ct_reserved0; int /*<<< orphan*/  ct_options; int /*<<< orphan*/  ct_fcs_subtype; int /*<<< orphan*/  ct_fcs_type; int /*<<< orphan*/ * ct_in_id; int /*<<< orphan*/  ct_revision; } ;
typedef  TYPE_1__ ct_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(ispsoftc_t *isp, ct_hdr_t *src, ct_hdr_t *dst)
{
	FUNC1(isp, src->ct_revision, &dst->ct_revision);
	FUNC1(isp, src->ct_in_id[0], &dst->ct_in_id[0]);
	FUNC1(isp, src->ct_in_id[1], &dst->ct_in_id[1]);
	FUNC1(isp, src->ct_in_id[2], &dst->ct_in_id[2]);
	FUNC1(isp, src->ct_fcs_type, &dst->ct_fcs_type);
	FUNC1(isp, src->ct_fcs_subtype, &dst->ct_fcs_subtype);
	FUNC1(isp, src->ct_options, &dst->ct_options);
	FUNC1(isp, src->ct_reserved0, &dst->ct_reserved0);
	FUNC0(isp, src->ct_cmd_resp, &dst->ct_cmd_resp);
	FUNC0(isp, src->ct_bcnt_resid, &dst->ct_bcnt_resid);
	FUNC1(isp, src->ct_reserved1, &dst->ct_reserved1);
	FUNC1(isp, src->ct_reason, &dst->ct_reason);
	FUNC1(isp, src->ct_explanation, &dst->ct_explanation);
	FUNC1(isp, src->ct_vunique, &dst->ct_vunique);
}