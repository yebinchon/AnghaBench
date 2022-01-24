#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_10__ {scalar_t__ port_type; } ;
typedef  TYPE_2__ sli4_t ;
typedef  int /*<<< orphan*/  sli4_req_hdr_t ;
struct TYPE_9__ {int request_length; scalar_t__ version; scalar_t__ timeout; int /*<<< orphan*/  subsystem; int /*<<< orphan*/  opcode; } ;
struct TYPE_11__ {void* resp_buf_addr_high; void* resp_buf_addr_low; int /*<<< orphan*/  resp_buf_length; void* cmd_buf_addr_high; void* cmd_buf_addr_low; int /*<<< orphan*/  cmd_buf_length; TYPE_1__ hdr; } ;
typedef  TYPE_3__ sli4_req_dmtf_exec_clp_cmd_t ;
struct TYPE_12__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  size; } ;
typedef  TYPE_4__ ocs_dma_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLI4_OPC_DMTF_EXEC_CLP_CMD ; 
 scalar_t__ SLI4_PORT_TYPE_FC ; 
 int /*<<< orphan*/  SLI4_SUBSYSTEM_DMTF ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,void*,size_t,int,int /*<<< orphan*/ *) ; 

int32_t
FUNC3(sli4_t *sli4, void *buf, size_t size,
		ocs_dma_t *cmd,
		ocs_dma_t *resp)
{
	sli4_req_dmtf_exec_clp_cmd_t *clp_cmd = NULL;
	uint32_t	sli_config_off = 0;

	if (SLI4_PORT_TYPE_FC == sli4->port_type) {
		sli_config_off = FUNC2(sli4, buf, size,
				sizeof (sli4_req_dmtf_exec_clp_cmd_t),
				NULL);
	}

	clp_cmd = (sli4_req_dmtf_exec_clp_cmd_t*)((uint8_t *)buf + sli_config_off);

	clp_cmd->hdr.opcode = SLI4_OPC_DMTF_EXEC_CLP_CMD;
	clp_cmd->hdr.subsystem = SLI4_SUBSYSTEM_DMTF;
	clp_cmd->hdr.request_length = sizeof(sli4_req_dmtf_exec_clp_cmd_t) -
					sizeof(sli4_req_hdr_t);
	clp_cmd->hdr.timeout = 0;
	clp_cmd->hdr.version = 0;
	clp_cmd->cmd_buf_length = cmd->size;
	clp_cmd->cmd_buf_addr_low = FUNC1(cmd->phys);
	clp_cmd->cmd_buf_addr_high = FUNC0(cmd->phys);
	clp_cmd->resp_buf_length = resp->size;
	clp_cmd->resp_buf_addr_low = FUNC1(resp->phys);
	clp_cmd->resp_buf_addr_high = FUNC0(resp->phys);

	return(sli_config_off + sizeof(sli4_req_dmtf_exec_clp_cmd_t));
}