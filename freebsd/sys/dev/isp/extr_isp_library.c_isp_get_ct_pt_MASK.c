#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_6__ {TYPE_1__* ctp_dataseg; int /*<<< orphan*/  ctp_cmd_bcnt; int /*<<< orphan*/  ctp_rsp_bcnt; int /*<<< orphan*/ * ctp_reserved2; int /*<<< orphan*/  ctp_rsp_cnt; int /*<<< orphan*/  ctp_reserved1; int /*<<< orphan*/  ctp_time; int /*<<< orphan*/  ctp_reserved0; int /*<<< orphan*/  ctp_vpidx; int /*<<< orphan*/  ctp_cmd_cnt; int /*<<< orphan*/  ctp_nphdl; int /*<<< orphan*/  ctp_status; int /*<<< orphan*/  ctp_handle; int /*<<< orphan*/  ctp_header; } ;
typedef  TYPE_2__ isp_ct_pt_t ;
struct TYPE_5__ {int /*<<< orphan*/  ds_count; int /*<<< orphan*/  ds_basehi; int /*<<< orphan*/  ds_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(ispsoftc_t *isp, isp_ct_pt_t *src, isp_ct_pt_t *dst)
{
	int i;

	FUNC3(isp, &src->ctp_header, &dst->ctp_header);
	FUNC1(isp, &src->ctp_handle, dst->ctp_handle);
	FUNC0(isp, &src->ctp_status, dst->ctp_status);
	FUNC0(isp, &src->ctp_nphdl, dst->ctp_nphdl);
	FUNC0(isp, &src->ctp_cmd_cnt, dst->ctp_cmd_cnt);
	FUNC2(isp, &src->ctp_vpidx, dst->ctp_vpidx);
	FUNC2(isp, &src->ctp_reserved0, dst->ctp_reserved0);
	FUNC0(isp, &src->ctp_time, dst->ctp_time);
	FUNC0(isp, &src->ctp_reserved1, dst->ctp_reserved1);
	FUNC0(isp, &src->ctp_rsp_cnt, dst->ctp_rsp_cnt);
	for (i = 0; i < 5; i++) {
		FUNC0(isp, &src->ctp_reserved2[i], dst->ctp_reserved2[i]);
	}
	FUNC1(isp, &src->ctp_rsp_bcnt, dst->ctp_rsp_bcnt);
	FUNC1(isp, &src->ctp_cmd_bcnt, dst->ctp_cmd_bcnt);
	for (i = 0; i < 2; i++) {
		FUNC1(isp, &src->ctp_dataseg[i].ds_base, dst->ctp_dataseg[i].ds_base);
		FUNC1(isp, &src->ctp_dataseg[i].ds_basehi, dst->ctp_dataseg[i].ds_basehi);
		FUNC1(isp, &src->ctp_dataseg[i].ds_count, dst->ctp_dataseg[i].ds_count);
	}
}