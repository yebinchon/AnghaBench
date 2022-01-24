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
typedef  int uint16_t ;
struct nvme_command {int /*<<< orphan*/  cdw10; int /*<<< orphan*/  opc; } ;
struct nvme_request {struct nvme_command cmd; } ;
struct nvme_controller {int dummy; } ;
typedef  int /*<<< orphan*/  nvme_cb_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_OPC_ABORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nvme_request* FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_controller*,struct nvme_request*) ; 

void
FUNC3(struct nvme_controller *ctrlr, uint16_t cid,
    uint16_t sqid, nvme_cb_fn_t cb_fn, void *cb_arg)
{
	struct nvme_request *req;
	struct nvme_command *cmd;

	req = FUNC1(cb_fn, cb_arg);

	cmd = &req->cmd;
	cmd->opc = NVME_OPC_ABORT;
	cmd->cdw10 = FUNC0((cid << 16) | sqid);

	FUNC2(ctrlr, req);
}