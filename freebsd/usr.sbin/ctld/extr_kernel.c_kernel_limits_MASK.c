#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ctl_iscsi_limits_params {int max_recv_data_segment_length; int max_send_data_segment_length; int max_burst_length; int first_burst_length; int /*<<< orphan*/  offload; } ;
struct TYPE_2__ {int /*<<< orphan*/  limits; } ;
struct ctl_iscsi {scalar_t__ status; int /*<<< orphan*/  error_str; TYPE_1__ data; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_ISCSI ; 
 int /*<<< orphan*/  CTL_ISCSI_LIMITS ; 
 scalar_t__ CTL_ISCSI_OK ; 
 int /*<<< orphan*/  FUNC0 (struct ctl_iscsi*,int) ; 
 int /*<<< orphan*/  ctl_fd ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ctl_iscsi*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 

void
FUNC6(const char *offload, int *max_recv_dsl, int *max_send_dsl,
    int *max_burst_length, int *first_burst_length)
{
	struct ctl_iscsi req;
	struct ctl_iscsi_limits_params *cilp;

	FUNC0(&req, sizeof(req));

	req.type = CTL_ISCSI_LIMITS;
	cilp = (struct ctl_iscsi_limits_params *)&(req.data.limits);
	if (offload != NULL) {
		FUNC5(cilp->offload, offload, sizeof(cilp->offload));
	}

	if (FUNC1(ctl_fd, CTL_ISCSI, &req) == -1) {
		FUNC3(1, "error issuing CTL_ISCSI ioctl; "
		    "dropping connection");
	}

	if (req.status != CTL_ISCSI_OK) {
		FUNC4(1, "error returned from CTL iSCSI limits request: "
		    "%s; dropping connection", req.error_str);
	}

	if (cilp->max_recv_data_segment_length != 0) {
		*max_recv_dsl = cilp->max_recv_data_segment_length;
		*max_send_dsl = cilp->max_recv_data_segment_length;
	}
	if (cilp->max_send_data_segment_length != 0)
		*max_send_dsl = cilp->max_send_data_segment_length;
	if (cilp->max_burst_length != 0)
		*max_burst_length = cilp->max_burst_length;
	if (cilp->first_burst_length != 0)
		*first_burst_length = cilp->first_burst_length;
	if (*max_burst_length < *first_burst_length)
		*first_burst_length = *max_burst_length;

	if (offload != NULL) {
		FUNC2("Kernel limits for offload \"%s\" are "
		    "MaxRecvDataSegment=%d, max_send_dsl=%d, "
		    "MaxBurstLength=%d, FirstBurstLength=%d",
		    offload, *max_recv_dsl, *max_send_dsl, *max_burst_length,
		    *first_burst_length);
	} else {
		FUNC2("Kernel limits are "
		    "MaxRecvDataSegment=%d, max_send_dsl=%d, "
		    "MaxBurstLength=%d, FirstBurstLength=%d",
		    *max_recv_dsl, *max_send_dsl, *max_burst_length,
		    *first_burst_length);
	}
}