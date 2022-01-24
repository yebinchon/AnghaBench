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
typedef  scalar_t__ u_int32_t ;
struct hpt_iop_request_header {int dummy; } ;
struct TYPE_2__ {int size; scalar_t__ context; int /*<<< orphan*/  result; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct hpt_iop_request_get_config {TYPE_1__ header; } ;
struct hpt_iop_hba {int /*<<< orphan*/  bar0h; int /*<<< orphan*/  bar0t; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ IOPMU_QUEUE_EMPTY ; 
 int /*<<< orphan*/  IOP_REQUEST_FLAG_SYNC_REQUEST ; 
 int /*<<< orphan*/  IOP_REQUEST_TYPE_GET_CONFIG ; 
 int /*<<< orphan*/  IOP_RESULT_PENDING ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int) ; 
 scalar_t__ FUNC5 (struct hpt_iop_hba*,scalar_t__,int) ; 
 int /*<<< orphan*/  inbound_queue ; 
 int /*<<< orphan*/  outbound_queue ; 

__attribute__((used)) static int FUNC6(struct hpt_iop_hba * hba,
				struct hpt_iop_request_get_config * config)
{
	u_int32_t req32;

	config->header.size = sizeof(struct hpt_iop_request_get_config);
	config->header.type = IOP_REQUEST_TYPE_GET_CONFIG;
	config->header.flags = IOP_REQUEST_FLAG_SYNC_REQUEST;
	config->header.result = IOP_RESULT_PENDING;
	config->header.context = 0;

	req32 = FUNC0(inbound_queue);
	if (req32 == IOPMU_QUEUE_EMPTY)
		return -1;

	FUNC4(hba->bar0t, hba->bar0h,
			req32, (u_int32_t *)config,
			sizeof(struct hpt_iop_request_header) >> 2);

	if (FUNC5(hba, req32, 20000)) {
		FUNC2(("hptiop: get config send cmd failed"));
		return -1;
	}

	FUNC3(hba->bar0t, hba->bar0h,
			req32, (u_int32_t *)config,
			sizeof(struct hpt_iop_request_get_config) >> 2);

	FUNC1(outbound_queue, req32);

	return 0;
}