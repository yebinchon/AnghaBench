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
struct TYPE_6__ {TYPE_1__* req_dataseg; int /*<<< orphan*/  req_totalcnt; int /*<<< orphan*/ * req_cdb; int /*<<< orphan*/  req_seg_count; int /*<<< orphan*/  req_time; int /*<<< orphan*/  req_reserved; int /*<<< orphan*/  req_crn; int /*<<< orphan*/  req_flags; int /*<<< orphan*/  req_scclun; int /*<<< orphan*/  req_target; int /*<<< orphan*/  req_lun_trn; int /*<<< orphan*/  req_handle; int /*<<< orphan*/  req_header; } ;
typedef  TYPE_2__ ispreqt3_t ;
struct TYPE_5__ {int /*<<< orphan*/  ds_count; int /*<<< orphan*/  ds_basehi; int /*<<< orphan*/  ds_base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int ISP_RQDSEG_T3 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC5(ispsoftc_t *isp, ispreqt3_t *src, ispreqt3_t *dst)
{
	int i;
	FUNC4(isp, &src->req_header, &dst->req_header);
	FUNC2(isp, src->req_handle, &dst->req_handle);
	FUNC3(isp, src->req_lun_trn, &dst->req_lun_trn);
	FUNC3(isp, src->req_target, &dst->req_target);
	FUNC1(isp, src->req_scclun, &dst->req_scclun);
	FUNC1(isp, src->req_flags,  &dst->req_flags);
	FUNC3(isp, src->req_crn, &dst->req_crn);
	FUNC3(isp, src->req_reserved, &dst->req_reserved);
	FUNC1(isp, src->req_time, &dst->req_time);
	FUNC1(isp, src->req_seg_count, &dst->req_seg_count);
	for (i = 0; i < FUNC0(src->req_cdb); i++) {
		FUNC3(isp, src->req_cdb[i], &dst->req_cdb[i]);
	}
	FUNC2(isp, src->req_totalcnt, &dst->req_totalcnt);
	for (i = 0; i < ISP_RQDSEG_T3; i++) {
		FUNC2(isp, src->req_dataseg[i].ds_base, &dst->req_dataseg[i].ds_base);
		FUNC2(isp, src->req_dataseg[i].ds_basehi, &dst->req_dataseg[i].ds_basehi);
		FUNC2(isp, src->req_dataseg[i].ds_count, &dst->req_dataseg[i].ds_count);
	}
}