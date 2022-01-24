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
struct nvme_command {int /*<<< orphan*/  prp1; void* cdw11; void* cdw10; int /*<<< orphan*/  opc; } ;
struct nvme_request {struct nvme_command cmd; } ;
struct nvme_qpair {int num_entries; int id; int /*<<< orphan*/  cmd_bus_addr; } ;
struct nvme_controller {int dummy; } ;
typedef  int /*<<< orphan*/  nvme_cb_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_OPC_CREATE_IO_SQ ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nvme_request* FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_controller*,struct nvme_request*) ; 

void
FUNC4(struct nvme_controller *ctrlr,
    struct nvme_qpair *io_que, nvme_cb_fn_t cb_fn, void *cb_arg)
{
	struct nvme_request *req;
	struct nvme_command *cmd;

	req = FUNC2(cb_fn, cb_arg);

	cmd = &req->cmd;
	cmd->opc = NVME_OPC_CREATE_IO_SQ;

	/*
	 * TODO: create a create io submission queue command data
	 *  structure.
	 */
	cmd->cdw10 = FUNC0(((io_que->num_entries-1) << 16) | io_que->id);
	/* 0x1 = physically contiguous */
	cmd->cdw11 = FUNC0((io_que->id << 16) | 0x1);
	cmd->prp1 = FUNC1(io_que->cmd_bus_addr);

	FUNC3(ctrlr, req);
}