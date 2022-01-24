#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct nvme_command {void* cdw11; void* cdw10; int /*<<< orphan*/  opc; } ;
struct nvme_request {struct nvme_command cmd; } ;
struct nvme_controller {int dummy; } ;
typedef  int /*<<< orphan*/  nvme_cb_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_OPC_GET_FEATURES ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nvme_request* FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_controller*,struct nvme_request*) ; 

void
FUNC3(struct nvme_controller *ctrlr, uint8_t feature,
    uint32_t cdw11, void *payload, uint32_t payload_size,
    nvme_cb_fn_t cb_fn, void *cb_arg)
{
	struct nvme_request *req;
	struct nvme_command *cmd;

	req = FUNC1(cb_fn, cb_arg);

	cmd = &req->cmd;
	cmd->opc = NVME_OPC_GET_FEATURES;
	cmd->cdw10 = FUNC0(feature);
	cmd->cdw11 = FUNC0(cdw11);

	FUNC2(ctrlr, req);
}