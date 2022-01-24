#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ocs_textbuf_t ;
struct TYPE_10__ {char* display_name; char* io_type; char* hio_type; char* cmd_tgt; char* cmd_ini; char* send_abts; char* init_task_tag; char* tgt_task_tag; char* hw_tag; char* tag; char* timeout; char* tmf_cmd; char* abort_rx_id; char* transferred; char* auto_resp; char* exp_xfer_len; char* xfer_req; char* seq_init; int /*<<< orphan*/  instance_index; TYPE_2__* hio; int /*<<< orphan*/  link; int /*<<< orphan*/  io_pending_link; int /*<<< orphan*/  io_alloc_link; int /*<<< orphan*/  ref; TYPE_1__* node; } ;
typedef  TYPE_3__ ocs_io_t ;
struct TYPE_9__ {char* reqtag; char* indicator; char* type; } ;
struct TYPE_8__ {char* display_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_SCSI_DDUMP_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 char* FUNC3 (TYPE_3__*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 

void
FUNC8(ocs_textbuf_t *textbuf, ocs_io_t *io)
{
	FUNC1(textbuf, "io", io->instance_index);
	FUNC2(textbuf, "display_name", "%s", io->display_name);
	FUNC2(textbuf, "node_name", "%s", io->node->display_name);

	FUNC2(textbuf, "ref_count", "%d", FUNC5(&io->ref));
	FUNC2(textbuf, "io_type", "%d", io->io_type);
	FUNC2(textbuf, "hio_type", "%d", io->hio_type);
	FUNC2(textbuf, "cmd_tgt", "%d", io->cmd_tgt);
	FUNC2(textbuf, "cmd_ini", "%d", io->cmd_ini);
	FUNC2(textbuf, "send_abts", "%d", io->send_abts);
	FUNC2(textbuf, "init_task_tag", "0x%x", io->init_task_tag);
	FUNC2(textbuf, "tgt_task_tag", "0x%x", io->tgt_task_tag);
	FUNC2(textbuf, "hw_tag", "0x%x", io->hw_tag);
	FUNC2(textbuf, "tag", "0x%x", io->tag);
	FUNC2(textbuf, "timeout", "%d", io->timeout);
	FUNC2(textbuf, "tmf_cmd", "%d", io->tmf_cmd);
	FUNC2(textbuf, "abort_rx_id", "0x%x", io->abort_rx_id);

	FUNC2(textbuf, "busy", "%d", FUNC3(io));
	FUNC2(textbuf, "transferred", "%zu", io->transferred);
	FUNC2(textbuf, "auto_resp", "%d", io->auto_resp);
	FUNC2(textbuf, "exp_xfer_len", "%d", io->exp_xfer_len);
	FUNC2(textbuf, "xfer_req", "%d", io->xfer_req);
	FUNC2(textbuf, "seq_init", "%d", io->seq_init);

	FUNC2(textbuf, "alloc_link", "%d", FUNC4(&io->io_alloc_link));
	FUNC2(textbuf, "pending_link", "%d", FUNC4(&io->io_pending_link));
	FUNC2(textbuf, "backend_link", "%d", FUNC4(&io->link));

	if (io->hio) {
		FUNC2(textbuf, "hw_tag", "%#x", io->hio->reqtag);
		FUNC2(textbuf, "hw_xri", "%#x", io->hio->indicator);
		FUNC2(textbuf, "hw_type", "%#x", io->hio->type);
	} else {
		FUNC2(textbuf, "hw_tag", "%s", "pending");
		FUNC2(textbuf, "hw_xri", "%s", "pending");
		FUNC2(textbuf, "hw_type", "%s", "pending");
	}

	FUNC6(textbuf, OCS_SCSI_DDUMP_IO, io);
	FUNC7(textbuf, OCS_SCSI_DDUMP_IO, io);

	FUNC0(textbuf, "io", io->instance_index);
}