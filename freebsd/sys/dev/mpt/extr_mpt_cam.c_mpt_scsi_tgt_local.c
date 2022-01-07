
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {size_t DataLength; int Address; int TargetAssistFlags; int * SGL; scalar_t__ RelativeOffset; int LUN; void* ReplyWord; void* MsgContext; int Function; int Tag; int QueueTag; int InitiatorTag; } ;
typedef TYPE_1__ uint8_t ;
typedef int uint32_t ;
struct mpt_softc {int scsi_tgt_handler_id; scalar_t__ is_spi; scalar_t__ is_sas; } ;
struct TYPE_21__ {int index; int req_pbuf; TYPE_1__* req_vbuf; } ;
typedef TYPE_2__ request_t ;
struct TYPE_22__ {scalar_t__ resid; int is_local; int reply_desc; size_t bytes_xfered; int state; TYPE_2__* req; int * ccb; } ;
typedef TYPE_3__ mpt_tgt_state_t ;
typedef int lun_id_t ;
typedef int bus_addr_t ;
typedef TYPE_1__ SGE_SIMPLE32 ;
typedef TYPE_1__* PTR_MSG_TARGET_ASSIST_REQUEST ;
typedef TYPE_1__* PTR_MPI_TARGET_SSP_CMD_BUFFER ;
typedef TYPE_1__* PTR_MPI_TARGET_SCSI_SPI_CMD_BUFFER ;


 int CAM_EXTLUN_BYTE_SWIZZLE (int ) ;
 int FALSE ;
 int MPI_FUNCTION_TARGET_ASSIST ;
 int MPI_SGE_FLAGS_END_OF_BUFFER ;
 int MPI_SGE_FLAGS_END_OF_LIST ;
 int MPI_SGE_FLAGS_HOST_TO_IOC ;
 int MPI_SGE_FLAGS_LAST_ELEMENT ;
 int MPI_SGE_FLAGS_SIMPLE_ELEMENT ;
 int MPI_pSGE_SET_FLAGS (TYPE_1__*,int) ;
 int MPI_pSGE_SET_LENGTH (TYPE_1__*,size_t) ;
 int MPT_RQSL (struct mpt_softc*) ;
 TYPE_3__* MPT_TGT_STATE (struct mpt_softc*,TYPE_2__*) ;
 int TARGET_ASSIST_FLAGS_DATA_DIRECTION ;
 int TGT_STATE_MOVING_DATA ;
 int TGT_STATE_MOVING_DATA_AND_STATUS ;
 int be64enc (int ,int ) ;
 void* htole32 (int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int min (size_t,int) ;
 TYPE_2__* mpt_get_request (struct mpt_softc*,int ) ;
 int mpt_prt (struct mpt_softc*,char*) ;
 int mpt_scsi_tgt_status (struct mpt_softc*,int *,TYPE_2__*,int ,int *,int ) ;
 int mpt_send_cmd (struct mpt_softc*,TYPE_2__*) ;

__attribute__((used)) static void
mpt_scsi_tgt_local(struct mpt_softc *mpt, request_t *cmd_req,
    lun_id_t lun, int send, uint8_t *data, size_t length)
{
 mpt_tgt_state_t *tgt;
 PTR_MSG_TARGET_ASSIST_REQUEST ta;
 SGE_SIMPLE32 *se;
 uint32_t flags;
 uint8_t *dptr;
 bus_addr_t pptr;
 request_t *req;




 tgt = MPT_TGT_STATE(mpt, cmd_req);
 if (length == 0 || tgt->resid == 0) {
  tgt->resid = 0;
  mpt_scsi_tgt_status(mpt, ((void*)0), cmd_req, 0, ((void*)0), 0);
  return;
 }

 if ((req = mpt_get_request(mpt, FALSE)) == ((void*)0)) {
  mpt_prt(mpt, "out of resources- dropping local response\n");
  return;
 }
 tgt->is_local = 1;


 memset(req->req_vbuf, 0, MPT_RQSL(mpt));
 ta = req->req_vbuf;

 if (mpt->is_sas) {
  PTR_MPI_TARGET_SSP_CMD_BUFFER ssp = cmd_req->req_vbuf;
  ta->QueueTag = ssp->InitiatorTag;
 } else if (mpt->is_spi) {
  PTR_MPI_TARGET_SCSI_SPI_CMD_BUFFER sp = cmd_req->req_vbuf;
  ta->QueueTag = sp->Tag;
 }
 ta->Function = MPI_FUNCTION_TARGET_ASSIST;
 ta->MsgContext = htole32(req->index | mpt->scsi_tgt_handler_id);
 ta->ReplyWord = htole32(tgt->reply_desc);
 be64enc(ta->LUN, CAM_EXTLUN_BYTE_SWIZZLE(lun));
 ta->RelativeOffset = 0;
 ta->DataLength = length;

 dptr = req->req_vbuf;
 dptr += MPT_RQSL(mpt);
 pptr = req->req_pbuf;
 pptr += MPT_RQSL(mpt);
 memcpy(dptr, data, min(length, MPT_RQSL(mpt)));

 se = (SGE_SIMPLE32 *) &ta->SGL[0];
 memset(se, 0,sizeof (*se));

 flags = MPI_SGE_FLAGS_SIMPLE_ELEMENT;
 if (send) {
  ta->TargetAssistFlags |= TARGET_ASSIST_FLAGS_DATA_DIRECTION;
  flags |= MPI_SGE_FLAGS_HOST_TO_IOC;
 }
 se->Address = pptr;
 MPI_pSGE_SET_LENGTH(se, length);
 flags |= MPI_SGE_FLAGS_LAST_ELEMENT;
 flags |= MPI_SGE_FLAGS_END_OF_LIST | MPI_SGE_FLAGS_END_OF_BUFFER;
 MPI_pSGE_SET_FLAGS(se, flags);

 tgt->ccb = ((void*)0);
 tgt->req = req;
 tgt->resid -= length;
 tgt->bytes_xfered = length;



 tgt->state = TGT_STATE_MOVING_DATA;

 mpt_send_cmd(mpt, req);
}
