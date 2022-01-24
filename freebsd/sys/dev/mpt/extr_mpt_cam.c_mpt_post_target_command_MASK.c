#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct mpt_softc {int scsi_tgt_handler_id; } ;
struct TYPE_11__ {int index; TYPE_3__* req_vbuf; scalar_t__ req_pbuf; } ;
typedef  TYPE_2__ request_t ;
typedef  scalar_t__ bus_addr_t ;
typedef  int U32 ;
struct TYPE_14__ {int /*<<< orphan*/  state; } ;
struct TYPE_10__ {void* PhysicalAddress32; } ;
struct TYPE_13__ {TYPE_1__ u; int /*<<< orphan*/  IoIndex; } ;
struct TYPE_12__ {int BufferCount; TYPE_4__* Buffer; void* MsgContext; int /*<<< orphan*/  BufferLength; int /*<<< orphan*/  Function; } ;
typedef  TYPE_3__* PTR_MSG_TARGET_CMD_BUFFER_POST_REQUEST ;
typedef  TYPE_4__* PTR_CMD_BUFFER_DESCRIPTOR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPI_FUNCTION_TARGET_CMD_BUFFER_POST ; 
 scalar_t__ MPT_REQUEST_AREA ; 
 scalar_t__ FUNC1 (struct mpt_softc*) ; 
 TYPE_8__* FUNC2 (struct mpt_softc*,TYPE_2__*) ; 
 int /*<<< orphan*/  TGT_STATE_LOADING ; 
 int /*<<< orphan*/  UINT8_MAX ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct mpt_softc*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC8(struct mpt_softc *mpt, request_t *req, int ioindex)
{
	PTR_MSG_TARGET_CMD_BUFFER_POST_REQUEST fc;
	PTR_CMD_BUFFER_DESCRIPTOR cb;
	bus_addr_t paddr;

	paddr = req->req_pbuf;
	paddr += FUNC1(mpt);
	FUNC5(req->req_vbuf, 0, MPT_REQUEST_AREA);
	FUNC2(mpt, req)->state = TGT_STATE_LOADING;

	fc = req->req_vbuf;
	fc->BufferCount = 1;
	fc->Function = MPI_FUNCTION_TARGET_CMD_BUFFER_POST;
	fc->BufferLength = FUNC0(MPT_REQUEST_AREA - FUNC1(mpt), UINT8_MAX);
	fc->MsgContext = FUNC4(req->index | mpt->scsi_tgt_handler_id);

	cb = &fc->Buffer[0];
	cb->IoIndex = FUNC3(ioindex);
	cb->u.PhysicalAddress32 = FUNC4((U32) paddr);

	FUNC6(mpt);
	FUNC7(mpt, req);
}