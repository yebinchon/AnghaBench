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
struct TYPE_4__ {int /*<<< orphan*/ * req_sense_data; int /*<<< orphan*/ * req_response; int /*<<< orphan*/  req_resid; int /*<<< orphan*/  req_sense_len; int /*<<< orphan*/  req_time; int /*<<< orphan*/  req_status_flags; int /*<<< orphan*/  req_state_flags; int /*<<< orphan*/  req_completion_status; int /*<<< orphan*/  req_scsi_status; int /*<<< orphan*/  req_handle; int /*<<< orphan*/  req_header; } ;
typedef  TYPE_1__ ispstatusreq_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(ispsoftc_t *isp, ispstatusreq_t *src, ispstatusreq_t *dst)
{
	int i;
	FUNC3(isp, &src->req_header, &dst->req_header);
	FUNC1(isp, &src->req_handle, dst->req_handle);
	FUNC0(isp, &src->req_scsi_status, dst->req_scsi_status);
	FUNC0(isp, &src->req_completion_status, dst->req_completion_status);
	FUNC0(isp, &src->req_state_flags, dst->req_state_flags);
	FUNC0(isp, &src->req_status_flags, dst->req_status_flags);
	FUNC0(isp, &src->req_time, dst->req_time);
	FUNC0(isp, &src->req_sense_len, dst->req_sense_len);
	FUNC1(isp, &src->req_resid, dst->req_resid);
	for (i = 0; i < sizeof (src->req_response); i++) {
		FUNC2(isp, &src->req_response[i], dst->req_response[i]);
	}
	for (i = 0; i < sizeof (src->req_sense_data); i++) {
		FUNC2(isp, &src->req_sense_data[i], dst->req_sense_data[i]);
	}
}