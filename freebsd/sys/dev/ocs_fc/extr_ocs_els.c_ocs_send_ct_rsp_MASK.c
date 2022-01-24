#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_12__ {int r_ctl; int timeout; scalar_t__ df_ctl; int /*<<< orphan*/  type; int /*<<< orphan*/  ox_id; } ;
struct TYPE_15__ {TYPE_2__ fc_ct_rsp; } ;
struct TYPE_11__ {TYPE_4__* virt; } ;
struct TYPE_13__ {char* display_name; int wire_len; TYPE_8__ iparam; int /*<<< orphan*/  hio_type; void* io_type; void* init_task_tag; TYPE_1__ els_rsp; } ;
typedef  TYPE_3__ ocs_io_t ;
typedef  int int32_t ;
struct TYPE_14__ {void* reason_code_explanation; void* reason_code; } ;
typedef  TYPE_4__ fcct_iu_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FC_TYPE_GS ; 
 int /*<<< orphan*/  OCS_HW_FC_CT_RSP ; 
 void* OCS_IO_TYPE_CT_RESP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocs_ct_acc_cb ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int32_t
FUNC5(ocs_io_t *io, uint32_t ox_id, fcct_iu_header_t *ct_hdr, uint32_t cmd_rsp_code, uint32_t reason_code, uint32_t reason_code_explanation)
{
	fcct_iu_header_t *rsp = io->els_rsp.virt;

	io->io_type = OCS_IO_TYPE_CT_RESP;

	*rsp = *ct_hdr;

	FUNC0(rsp, cmd_rsp_code, 0);
	rsp->reason_code = reason_code;
	rsp->reason_code_explanation = reason_code_explanation;

	io->display_name = "ct response";
	io->init_task_tag = ox_id;
	io->wire_len += sizeof(*rsp);

	FUNC3(&io->iparam, 0, sizeof(io->iparam));

	io->io_type = OCS_IO_TYPE_CT_RESP;
	io->hio_type = OCS_HW_FC_CT_RSP;
	io->iparam.fc_ct_rsp.ox_id = FUNC2(ox_id);
	io->iparam.fc_ct_rsp.r_ctl = 3;
	io->iparam.fc_ct_rsp.type = FC_TYPE_GS;
	io->iparam.fc_ct_rsp.df_ctl = 0;
	io->iparam.fc_ct_rsp.timeout = 5;

	if (FUNC4(io, ocs_ct_acc_cb) < 0) {
		FUNC1(io);
		return -1;
	}
	return 0;
}