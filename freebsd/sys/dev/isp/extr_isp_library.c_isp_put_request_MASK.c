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
struct TYPE_6__ {TYPE_1__* req_dataseg; int /*<<< orphan*/ * req_cdb; int /*<<< orphan*/  req_seg_count; int /*<<< orphan*/  req_time; int /*<<< orphan*/  req_flags; int /*<<< orphan*/  req_cdblen; int /*<<< orphan*/  req_target; int /*<<< orphan*/  req_lun_trn; int /*<<< orphan*/  req_handle; int /*<<< orphan*/  req_header; } ;
typedef  TYPE_2__ ispreq_t ;
struct TYPE_5__ {int /*<<< orphan*/  ds_count; int /*<<< orphan*/  ds_base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int ISP_RQDSEG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC6(ispsoftc_t *isp, ispreq_t *rqsrc, ispreq_t *rqdst)
{
	int i;
	FUNC5(isp, &rqsrc->req_header, &rqdst->req_header);
	FUNC2(isp, rqsrc->req_handle, &rqdst->req_handle);
	if (FUNC4(isp)) {
		FUNC3(isp, rqsrc->req_lun_trn, &rqdst->req_target);
		FUNC3(isp, rqsrc->req_target, &rqdst->req_lun_trn);
	} else {
		FUNC3(isp, rqsrc->req_lun_trn, &rqdst->req_lun_trn);
		FUNC3(isp, rqsrc->req_target, &rqdst->req_target);
	}
	FUNC1(isp, rqsrc->req_cdblen, &rqdst->req_cdblen);
	FUNC1(isp, rqsrc->req_flags, &rqdst->req_flags);
	FUNC1(isp, rqsrc->req_time, &rqdst->req_time);
	FUNC1(isp, rqsrc->req_seg_count, &rqdst->req_seg_count);
	for (i = 0; i < FUNC0(rqsrc->req_cdb); i++) {
		FUNC3(isp, rqsrc->req_cdb[i], &rqdst->req_cdb[i]);
	}
	for (i = 0; i < ISP_RQDSEG; i++) {
		FUNC2(isp, rqsrc->req_dataseg[i].ds_base, &rqdst->req_dataseg[i].ds_base);
		FUNC2(isp, rqsrc->req_dataseg[i].ds_count, &rqdst->req_dataseg[i].ds_count);
	}
}