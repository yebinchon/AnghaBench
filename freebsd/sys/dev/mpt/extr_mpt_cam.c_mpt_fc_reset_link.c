
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mpt_softc {int dummy; } ;
struct TYPE_8__ {int index; TYPE_2__* req_vbuf; } ;
typedef TYPE_1__ request_t ;
struct TYPE_9__ {int MsgContext; int Function; int SendFlags; } ;
typedef TYPE_2__* PTR_MSG_FC_PRIMITIVE_SEND_REQUEST ;


 int ENOMEM ;
 int FALSE ;
 int MPI_FC_PRIM_SEND_FLAGS_RESET_LINK ;
 int MPI_FUNCTION_FC_PRIMITIVE_SEND ;
 int REQ_STATE_DONE ;
 int fc_els_handler_id ;
 int htole32 (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int mpt_free_request (struct mpt_softc*,TYPE_1__*) ;
 TYPE_1__* mpt_get_request (struct mpt_softc*,int ) ;
 int mpt_send_cmd (struct mpt_softc*,TYPE_1__*) ;
 int mpt_wait_req (struct mpt_softc*,TYPE_1__*,int ,int ,int ,int) ;

__attribute__((used)) static int
mpt_fc_reset_link(struct mpt_softc *mpt, int dowait)
{
 int r = 0;
 request_t *req;
 PTR_MSG_FC_PRIMITIVE_SEND_REQUEST fc;

  req = mpt_get_request(mpt, FALSE);
 if (req == ((void*)0)) {
  return (ENOMEM);
 }
 fc = req->req_vbuf;
 memset(fc, 0, sizeof(*fc));
 fc->SendFlags = MPI_FC_PRIM_SEND_FLAGS_RESET_LINK;
 fc->Function = MPI_FUNCTION_FC_PRIMITIVE_SEND;
 fc->MsgContext = htole32(req->index | fc_els_handler_id);
 mpt_send_cmd(mpt, req);
 if (dowait) {
  r = mpt_wait_req(mpt, req, REQ_STATE_DONE,
      REQ_STATE_DONE, FALSE, 60 * 1000);
  if (r == 0) {
   mpt_free_request(mpt, req);
  }
 }
 return (r);
}
