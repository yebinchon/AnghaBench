
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mpt_softc {int dummy; } ;
struct TYPE_6__ {int index; TYPE_2__* req_vbuf; } ;
typedef TYPE_1__ request_t ;
struct TYPE_7__ {int Switch; int MsgContext; int Function; } ;
typedef TYPE_2__ MSG_EVENT_NOTIFY ;


 int ENOMEM ;
 int FALSE ;
 int MPI_FUNCTION_EVENT_NOTIFICATION ;
 int MPT_PRT_DEBUG ;
 int MPT_REPLY_HANDLER_EVENTS ;
 int htole32 (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int mpt_check_doorbell (struct mpt_softc*) ;
 TYPE_1__* mpt_get_request (struct mpt_softc*,int ) ;
 int mpt_lprt (struct mpt_softc*,int ,char*,char*) ;
 int mpt_send_cmd (struct mpt_softc*,TYPE_1__*) ;

__attribute__((used)) static int
mpt_send_event_request(struct mpt_softc *mpt, int onoff)
{
 request_t *req;
 MSG_EVENT_NOTIFY *enable_req;

 req = mpt_get_request(mpt, FALSE);
 if (req == ((void*)0)) {
  return (ENOMEM);
 }
 enable_req = req->req_vbuf;
 memset(enable_req, 0, sizeof *enable_req);

 enable_req->Function = MPI_FUNCTION_EVENT_NOTIFICATION;
 enable_req->MsgContext = htole32(req->index | MPT_REPLY_HANDLER_EVENTS);
 enable_req->Switch = onoff;

 mpt_check_doorbell(mpt);
 mpt_lprt(mpt, MPT_PRT_DEBUG, "%sabling async events\n",
     onoff ? "en" : "dis");



 mpt_send_cmd(mpt, req);
 return (0);
}
