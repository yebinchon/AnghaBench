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
struct TYPE_4__ {int /*<<< orphan*/  fcp_rsp_rsplen; int /*<<< orphan*/  fcp_rsp_snslen; int /*<<< orphan*/  fcp_rsp_resid; int /*<<< orphan*/  fcp_rsp_scsi_status; int /*<<< orphan*/  fcp_rsp_bits; int /*<<< orphan*/  fcp_rsp_status_qualifier; int /*<<< orphan*/ * fcp_rsp_reserved; } ;
typedef  TYPE_1__ fcp_rsp_iu_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(ispsoftc_t *isp, fcp_rsp_iu_t *src, fcp_rsp_iu_t *dst)
{
	int i;
	for (i = 0; i < ((sizeof (src->fcp_rsp_reserved))/(sizeof (src->fcp_rsp_reserved[0]))); i++) {
		FUNC2(isp, src->fcp_rsp_reserved[i], &dst->fcp_rsp_reserved[i]);
	}
	FUNC0(isp, src->fcp_rsp_status_qualifier, &dst->fcp_rsp_status_qualifier);
	FUNC2(isp, src->fcp_rsp_bits, &dst->fcp_rsp_bits);
	FUNC2(isp, src->fcp_rsp_scsi_status, &dst->fcp_rsp_scsi_status);
	FUNC1(isp, src->fcp_rsp_resid, &dst->fcp_rsp_resid);
	FUNC1(isp, src->fcp_rsp_snslen, &dst->fcp_rsp_snslen);
	FUNC1(isp, src->fcp_rsp_rsplen, &dst->fcp_rsp_rsplen);
}