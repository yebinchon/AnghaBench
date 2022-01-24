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
struct TYPE_4__ {int /*<<< orphan*/ * req_cdb; int /*<<< orphan*/  req_seg_count; int /*<<< orphan*/  req_time; int /*<<< orphan*/  req_flags; int /*<<< orphan*/  req_cdblen; int /*<<< orphan*/  req_target; int /*<<< orphan*/  req_lun_trn; int /*<<< orphan*/  req_handle; int /*<<< orphan*/  req_header; } ;
typedef  TYPE_1__ ispextreq_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC6(ispsoftc_t *isp, ispextreq_t *src, ispextreq_t *dst)
{
	int i;
	FUNC5(isp, &src->req_header, &dst->req_header);
	FUNC2(isp, src->req_handle, &dst->req_handle);
	if (FUNC4(isp)) {
		FUNC3(isp, src->req_lun_trn, &dst->req_target);
		FUNC3(isp, src->req_target, &dst->req_lun_trn);
	} else {
		FUNC3(isp, src->req_lun_trn, &dst->req_lun_trn);
		FUNC3(isp, src->req_target, &dst->req_target);
	}
	FUNC1(isp, src->req_cdblen, &dst->req_cdblen);
	FUNC1(isp, src->req_flags, &dst->req_flags);
	FUNC1(isp, src->req_time, &dst->req_time);
	FUNC1(isp, src->req_seg_count, &dst->req_seg_count);
	for (i = 0; i < FUNC0(src->req_cdb); i++) {
		FUNC3(isp, src->req_cdb[i], &dst->req_cdb[i]);
	}
}