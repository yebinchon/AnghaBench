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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_4__ {scalar_t__ req_rsp_sense; int /*<<< orphan*/  req_response_len; int /*<<< orphan*/  req_sense_len; int /*<<< orphan*/  req_fcp_residual; int /*<<< orphan*/  req_scsi_status; int /*<<< orphan*/  req_retry_delay; int /*<<< orphan*/  req_state_flags; int /*<<< orphan*/  req_reserved0; int /*<<< orphan*/  req_resid; int /*<<< orphan*/  req_oxid; int /*<<< orphan*/  req_completion_status; int /*<<< orphan*/  req_handle; int /*<<< orphan*/  req_header; } ;
typedef  TYPE_1__ isp24xx_statusreq_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC5(ispsoftc_t *isp, isp24xx_statusreq_t *src, isp24xx_statusreq_t *dst)
{
	int i;
	uint32_t *s, *d;

	FUNC4(isp, &src->req_header, &dst->req_header);
	FUNC2(isp, &src->req_handle, dst->req_handle);
	FUNC1(isp, &src->req_completion_status, dst->req_completion_status);
	FUNC1(isp, &src->req_oxid, dst->req_oxid);
	FUNC2(isp, &src->req_resid, dst->req_resid);
	FUNC1(isp, &src->req_reserved0, dst->req_reserved0);
	FUNC1(isp, &src->req_state_flags, dst->req_state_flags);
	FUNC1(isp, &src->req_retry_delay, dst->req_retry_delay);
	FUNC1(isp, &src->req_scsi_status, dst->req_scsi_status);
	FUNC2(isp, &src->req_fcp_residual, dst->req_fcp_residual);
	FUNC2(isp, &src->req_sense_len, dst->req_sense_len);
	FUNC2(isp, &src->req_response_len, dst->req_response_len);
	s = (uint32_t *)src->req_rsp_sense;
	d = (uint32_t *)dst->req_rsp_sense;
	for (i = 0; i < (FUNC0(src->req_rsp_sense) >> 2); i++) {
		d[i] = FUNC3(isp, s[i]);
	}
}