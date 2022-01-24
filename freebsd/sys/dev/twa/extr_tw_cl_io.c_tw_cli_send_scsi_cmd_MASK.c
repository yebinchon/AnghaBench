#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tw_cli_req_context {int request_id; int /*<<< orphan*/  length; int /*<<< orphan*/  data_phys; struct tw_cli_ctlr_context* ctlr; struct tw_cl_command_packet* cmd_pkt; int /*<<< orphan*/  data; } ;
struct tw_cli_ctlr_context {int flags; int /*<<< orphan*/  ctlr_handle; int /*<<< orphan*/  internal_req_data_phys; int /*<<< orphan*/  internal_req_data; scalar_t__ internal_req_busy; } ;
struct tw_cl_sg_desc64 {void* length; int /*<<< orphan*/  address; } ;
struct tw_cl_sg_desc32 {void* length; void* address; } ;
struct tw_cl_command_9k {int sgl_offset; int* cdb; scalar_t__ sg_list; void* lun_h4__sgl_entries; scalar_t__ status; void* lun_l4__req_id; scalar_t__ unit; int /*<<< orphan*/  res__opcode; } ;
struct TYPE_6__ {struct tw_cl_command_9k cmd_pkt_9k; } ;
struct TYPE_4__ {int size_header; } ;
struct TYPE_5__ {TYPE_1__ header_desc; } ;
struct tw_cl_command_packet {TYPE_3__ command; TYPE_2__ cmd_hdr; } ;
typedef  int TW_UINT8 ;
typedef  scalar_t__ TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TWA_FW_CMD_EXECUTE_SCSI ; 
 int /*<<< orphan*/  TW_CLI_SECTOR_SIZE ; 
 int TW_CL_64BIT_ADDRESSES ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TW_CL_TRUE ; 
 scalar_t__ TW_OSL_EBUSY ; 
 scalar_t__ TW_OSL_EIO ; 
 scalar_t__ TW_OSL_ESUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 (struct tw_cli_req_context*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

TW_INT32
FUNC8(struct tw_cli_req_context *req, TW_INT32 cmd)
{
	struct tw_cl_command_packet	*cmdpkt;
	struct tw_cl_command_9k		*cmd9k;
	struct tw_cli_ctlr_context	*ctlr;
	TW_INT32			error;

	ctlr = req->ctlr;
	FUNC4(4, ctlr->ctlr_handle, FUNC6(), "entered");

	/* Make sure this is the only CL internal request at this time. */
	if (ctlr->internal_req_busy)
		return(TW_OSL_EBUSY);
	ctlr->internal_req_busy = TW_CL_TRUE;
	req->data = ctlr->internal_req_data;
	req->data_phys = ctlr->internal_req_data_phys;
	FUNC7(req->data, TW_CLI_SECTOR_SIZE);
	req->length = TW_CLI_SECTOR_SIZE;

	/* Build the cmd pkt. */
	cmdpkt = req->cmd_pkt;

	cmdpkt->cmd_hdr.header_desc.size_header = 128;
		
	cmd9k = &(cmdpkt->command.cmd_pkt_9k);

	cmd9k->res__opcode =
		FUNC0(0, TWA_FW_CMD_EXECUTE_SCSI);
	cmd9k->unit = 0;
	cmd9k->lun_l4__req_id = FUNC1(req->request_id);
	cmd9k->status = 0;
	cmd9k->sgl_offset = 16; /* offset from end of hdr = max cdb len */
	cmd9k->lun_h4__sgl_entries = FUNC1(1);

	if (req->ctlr->flags & TW_CL_64BIT_ADDRESSES) {
		((struct tw_cl_sg_desc64 *)(cmd9k->sg_list))[0].address =
			FUNC3(req->data_phys);
		((struct tw_cl_sg_desc64 *)(cmd9k->sg_list))[0].length =
			FUNC2(req->length);
	} else {
		((struct tw_cl_sg_desc32 *)(cmd9k->sg_list))[0].address =
			FUNC2(req->data_phys);
		((struct tw_cl_sg_desc32 *)(cmd9k->sg_list))[0].length =
			FUNC2(req->length);
	}

	cmd9k->cdb[0] = (TW_UINT8)cmd;
	cmd9k->cdb[4] = 128;

	if ((error = FUNC5(req)))
		if (error != TW_OSL_EBUSY) {
			FUNC4(1, ctlr->ctlr_handle,
				FUNC6(),
				"Failed to start SCSI command",
				"request = %p, error = %d", req, error);
			return(TW_OSL_EIO);
		}
	return(TW_OSL_ESUCCESS);
}