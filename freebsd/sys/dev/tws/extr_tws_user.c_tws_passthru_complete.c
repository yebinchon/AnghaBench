
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_request {int state; } ;


 int TWS_REQ_STATE_COMPLETE ;
 int wakeup_one (struct tws_request*) ;

void
tws_passthru_complete(struct tws_request *req)
{
    req->state = TWS_REQ_STATE_COMPLETE;
    wakeup_one(req);

}
