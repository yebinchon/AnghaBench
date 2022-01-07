
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct mpt_softc {int scsi_tgt_handler_id; } ;
struct TYPE_11__ {int index; TYPE_3__* req_vbuf; scalar_t__ req_pbuf; } ;
typedef TYPE_2__ request_t ;
typedef scalar_t__ bus_addr_t ;
typedef int U32 ;
struct TYPE_14__ {int state; } ;
struct TYPE_10__ {void* PhysicalAddress32; } ;
struct TYPE_13__ {TYPE_1__ u; int IoIndex; } ;
struct TYPE_12__ {int BufferCount; TYPE_4__* Buffer; void* MsgContext; int BufferLength; int Function; } ;
typedef TYPE_3__* PTR_MSG_TARGET_CMD_BUFFER_POST_REQUEST ;
typedef TYPE_4__* PTR_CMD_BUFFER_DESCRIPTOR ;


 int MIN (scalar_t__,int ) ;
 int MPI_FUNCTION_TARGET_CMD_BUFFER_POST ;
 scalar_t__ MPT_REQUEST_AREA ;
 scalar_t__ MPT_RQSL (struct mpt_softc*) ;
 TYPE_8__* MPT_TGT_STATE (struct mpt_softc*,TYPE_2__*) ;
 int TGT_STATE_LOADING ;
 int UINT8_MAX ;
 int htole16 (int) ;
 void* htole32 (int) ;
 int memset (TYPE_3__*,int ,scalar_t__) ;
 int mpt_check_doorbell (struct mpt_softc*) ;
 int mpt_send_cmd (struct mpt_softc*,TYPE_2__*) ;

__attribute__((used)) static void
mpt_post_target_command(struct mpt_softc *mpt, request_t *req, int ioindex)
{
 PTR_MSG_TARGET_CMD_BUFFER_POST_REQUEST fc;
 PTR_CMD_BUFFER_DESCRIPTOR cb;
 bus_addr_t paddr;

 paddr = req->req_pbuf;
 paddr += MPT_RQSL(mpt);
 memset(req->req_vbuf, 0, MPT_REQUEST_AREA);
 MPT_TGT_STATE(mpt, req)->state = TGT_STATE_LOADING;

 fc = req->req_vbuf;
 fc->BufferCount = 1;
 fc->Function = MPI_FUNCTION_TARGET_CMD_BUFFER_POST;
 fc->BufferLength = MIN(MPT_REQUEST_AREA - MPT_RQSL(mpt), UINT8_MAX);
 fc->MsgContext = htole32(req->index | mpt->scsi_tgt_handler_id);

 cb = &fc->Buffer[0];
 cb->IoIndex = htole16(ioindex);
 cb->u.PhysicalAddress32 = htole32((U32) paddr);

 mpt_check_doorbell(mpt);
 mpt_send_cmd(mpt, req);
}
