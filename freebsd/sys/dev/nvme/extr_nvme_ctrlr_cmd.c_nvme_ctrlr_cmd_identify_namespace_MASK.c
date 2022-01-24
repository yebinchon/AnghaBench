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
typedef  int /*<<< orphan*/  uint32_t ;
struct nvme_command {int /*<<< orphan*/  nsid; int /*<<< orphan*/  opc; } ;
struct nvme_request {struct nvme_command cmd; } ;
struct nvme_namespace_data {int dummy; } ;
struct nvme_controller {int dummy; } ;
typedef  int /*<<< orphan*/  nvme_cb_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_OPC_IDENTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct nvme_request* FUNC1 (void*,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_controller*,struct nvme_request*) ; 

void
FUNC3(struct nvme_controller *ctrlr, uint32_t nsid,
	void *payload, nvme_cb_fn_t cb_fn, void *cb_arg)
{
	struct nvme_request *req;
	struct nvme_command *cmd;

	req = FUNC1(payload,
	    sizeof(struct nvme_namespace_data), cb_fn, cb_arg);

	cmd = &req->cmd;
	cmd->opc = NVME_OPC_IDENTIFY;

	/*
	 * TODO: create an identify command data structure
	 */
	cmd->nsid = FUNC0(nsid);

	FUNC2(ctrlr, req);
}