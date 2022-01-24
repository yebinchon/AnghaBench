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
typedef  int uint8_t ;
struct nvme_command {void* cdw11; void* cdw10; void* nsid; int /*<<< orphan*/  opc; } ;
struct nvme_request {struct nvme_command cmd; } ;
struct nvme_namespace {int id; int /*<<< orphan*/  ctrlr; } ;
struct nvme_dsm_range {int dummy; } ;
typedef  int /*<<< orphan*/  nvme_cb_fn_t ;

/* Variables and functions */
 int ENOMEM ; 
 int NVME_DSM_ATTR_DEALLOCATE ; 
 int /*<<< orphan*/  NVME_OPC_DATASET_MANAGEMENT ; 
 void* FUNC0 (int) ; 
 struct nvme_request* FUNC1 (void*,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nvme_request*) ; 

int
FUNC3(struct nvme_namespace *ns, void *payload,
    uint8_t num_ranges, nvme_cb_fn_t cb_fn, void *cb_arg)
{
	struct nvme_request	*req;
	struct nvme_command	*cmd;

	req = FUNC1(payload,
	    num_ranges * sizeof(struct nvme_dsm_range), cb_fn, cb_arg);

	if (req == NULL)
		return (ENOMEM);

	cmd = &req->cmd;
	cmd->opc = NVME_OPC_DATASET_MANAGEMENT;
	cmd->nsid = FUNC0(ns->id);

	/* TODO: create a delete command data structure */
	cmd->cdw10 = FUNC0(num_ranges - 1);
	cmd->cdw11 = FUNC0(NVME_DSM_ATTR_DEALLOCATE);

	FUNC2(ns->ctrlr, req);

	return (0);
}