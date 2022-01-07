
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mpt_softc {scalar_t__ is_fc; scalar_t__ is_sas; } ;
struct TYPE_8__ {int index; TYPE_2__* req_vbuf; } ;
typedef TYPE_1__ request_t ;
struct TYPE_9__ {int PortNumber; int MsgContext; int Function; } ;
typedef TYPE_2__ MSG_PORT_ENABLE ;


 int FALSE ;
 int MPI_FUNCTION_PORT_ENABLE ;
 int MPT_PRT_DEBUG ;
 int MPT_REPLY_HANDLER_CONFIG ;
 int MPT_RQSL (struct mpt_softc*) ;
 int REQ_STATE_DONE ;
 int htole32 (int) ;
 int memset (TYPE_2__*,int ,int ) ;
 int mpt_check_doorbell (struct mpt_softc*) ;
 int mpt_free_request (struct mpt_softc*,TYPE_1__*) ;
 TYPE_1__* mpt_get_request (struct mpt_softc*,int ) ;
 int mpt_lprt (struct mpt_softc*,int ,char*,int) ;
 int mpt_prt (struct mpt_softc*,char*,int) ;
 int mpt_send_cmd (struct mpt_softc*,TYPE_1__*) ;
 int mpt_wait_req (struct mpt_softc*,TYPE_1__*,int ,int ,int ,int) ;

__attribute__((used)) static int
mpt_send_port_enable(struct mpt_softc *mpt, int port)
{
 request_t *req;
 MSG_PORT_ENABLE *enable_req;
 int error;

 req = mpt_get_request(mpt, FALSE);
 if (req == ((void*)0))
  return (-1);

 enable_req = req->req_vbuf;
 memset(enable_req, 0, MPT_RQSL(mpt));

 enable_req->Function = MPI_FUNCTION_PORT_ENABLE;
 enable_req->MsgContext = htole32(req->index | MPT_REPLY_HANDLER_CONFIG);
 enable_req->PortNumber = port;

 mpt_check_doorbell(mpt);
 mpt_lprt(mpt, MPT_PRT_DEBUG, "enabling port %d\n", port);

 mpt_send_cmd(mpt, req);
 error = mpt_wait_req(mpt, req, REQ_STATE_DONE, REQ_STATE_DONE,
     FALSE, (mpt->is_sas || mpt->is_fc)? 300000 : 30000);
 if (error != 0) {
  mpt_prt(mpt, "port %d enable timed out\n", port);
  return (-1);
 }
 mpt_free_request(mpt, req);
 mpt_lprt(mpt, MPT_PRT_DEBUG, "enabled port %d\n", port);
 return (0);
}
