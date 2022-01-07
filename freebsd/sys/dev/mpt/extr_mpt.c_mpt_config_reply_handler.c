
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct mpt_softc {int request_pending_list; } ;
struct TYPE_10__ {int state; int IOCStatus; scalar_t__ req_vbuf; } ;
typedef TYPE_1__ request_t ;
struct TYPE_13__ {int ExtPageType; int ExtPageLength; int Header; } ;
struct TYPE_12__ {int ExtPageType; int ExtPageLength; int Header; } ;
struct TYPE_11__ {int IOCStatus; } ;
typedef TYPE_2__ MSG_DEFAULT_REPLY ;
typedef TYPE_3__ MSG_CONFIG_REPLY ;
typedef TYPE_4__ MSG_CONFIG ;


 int REQ_STATE_DONE ;
 int REQ_STATE_NEED_WAKEUP ;
 int REQ_STATE_QUEUED ;
 int REQ_STATE_TIMEDOUT ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int TRUE ;
 int bcopy (int *,int *,int) ;
 int le16toh (int ) ;
 int links ;
 int mpt_free_request (struct mpt_softc*,TYPE_1__*) ;
 int wakeup (TYPE_1__*) ;

__attribute__((used)) static int
mpt_config_reply_handler(struct mpt_softc *mpt, request_t *req,
 uint32_t reply_desc, MSG_DEFAULT_REPLY *reply_frame)
{

 if (req != ((void*)0)) {
  if (reply_frame != ((void*)0)) {
   MSG_CONFIG *cfgp;
   MSG_CONFIG_REPLY *reply;

   cfgp = (MSG_CONFIG *)req->req_vbuf;
   reply = (MSG_CONFIG_REPLY *)reply_frame;
   req->IOCStatus = le16toh(reply_frame->IOCStatus);
   bcopy(&reply->Header, &cfgp->Header,
         sizeof(cfgp->Header));
   cfgp->ExtPageLength = reply->ExtPageLength;
   cfgp->ExtPageType = reply->ExtPageType;
  }
  req->state &= ~REQ_STATE_QUEUED;
  req->state |= REQ_STATE_DONE;
  TAILQ_REMOVE(&mpt->request_pending_list, req, links);
  if ((req->state & REQ_STATE_NEED_WAKEUP) != 0) {
   wakeup(req);
  } else if ((req->state & REQ_STATE_TIMEDOUT) != 0) {



   mpt_free_request(mpt, req);
  }
 }

 return (TRUE);
}
