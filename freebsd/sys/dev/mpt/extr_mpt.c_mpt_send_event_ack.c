
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct mpt_softc {int dummy; } ;
struct TYPE_8__ {scalar_t__ req_vbuf; } ;
typedef TYPE_1__ request_t ;
struct TYPE_10__ {void* MsgContext; void* EventContext; void* Event; int Function; } ;
struct TYPE_9__ {int EventContext; int Event; } ;
typedef TYPE_2__ MSG_EVENT_NOTIFY_REPLY ;
typedef TYPE_3__ MSG_EVENT_ACK ;


 int MPI_FUNCTION_EVENT_ACK ;
 void* htole32 (int ) ;
 int memset (TYPE_3__*,int ,int) ;
 int mpt_check_doorbell (struct mpt_softc*) ;
 int mpt_send_cmd (struct mpt_softc*,TYPE_1__*) ;

__attribute__((used)) static void
mpt_send_event_ack(struct mpt_softc *mpt, request_t *ack_req,
     MSG_EVENT_NOTIFY_REPLY *msg, uint32_t context)
{
 MSG_EVENT_ACK *ackp;

 ackp = (MSG_EVENT_ACK *)ack_req->req_vbuf;
 memset(ackp, 0, sizeof (*ackp));
 ackp->Function = MPI_FUNCTION_EVENT_ACK;
 ackp->Event = htole32(msg->Event);
 ackp->EventContext = htole32(msg->EventContext);
 ackp->MsgContext = htole32(context);
 mpt_check_doorbell(mpt);
 mpt_send_cmd(mpt, ack_req);
}
