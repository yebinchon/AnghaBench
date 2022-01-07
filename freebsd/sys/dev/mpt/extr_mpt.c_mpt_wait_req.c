
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct mpt_softc {scalar_t__ reset_cnt; } ;
typedef int sbintime_t ;
struct TYPE_5__ {int state; TYPE_2__* req_vbuf; } ;
typedef TYPE_1__ request_t ;
typedef int mpt_req_state_t ;
struct TYPE_6__ {int Function; } ;
typedef TYPE_2__ MSG_REQUEST_HEADER ;


 int DELAY (int) ;
 int EIO ;
 int ETIMEDOUT ;
 scalar_t__ EWOULDBLOCK ;
 int PUSER ;
 int REQ_STATE_NEED_WAKEUP ;
 int REQ_STATE_TIMEDOUT ;
 int SBT_1MS ;
 int mpt_intr (struct mpt_softc*) ;
 int mpt_prt (struct mpt_softc*,char*,int ) ;
 scalar_t__ mpt_sleep (struct mpt_softc*,TYPE_1__*,int ,char*,int) ;

int
mpt_wait_req(struct mpt_softc *mpt, request_t *req,
      mpt_req_state_t state, mpt_req_state_t mask,
      int sleep_ok, int time_ms)
{
 int timeout;
 u_int saved_cnt;
 sbintime_t sbt;






 if (sleep_ok != 0) {
  sbt = SBT_1MS * time_ms;

  timeout = time_ms;
 } else {
  sbt = 0;
  timeout = time_ms * 2;
 }
 req->state |= REQ_STATE_NEED_WAKEUP;
 mask &= ~REQ_STATE_NEED_WAKEUP;
 saved_cnt = mpt->reset_cnt;
 while ((req->state & mask) != state && mpt->reset_cnt == saved_cnt) {
  if (sleep_ok != 0) {
   if (mpt_sleep(mpt, req, PUSER, "mptreq", sbt) ==
       EWOULDBLOCK) {
    timeout = 0;
    break;
   }
  } else {
   if (time_ms != 0 && --timeout == 0) {
    break;
   }
   DELAY(500);
   mpt_intr(mpt);
  }
 }
 req->state &= ~REQ_STATE_NEED_WAKEUP;
 if (mpt->reset_cnt != saved_cnt) {
  return (EIO);
 }
 if (time_ms && timeout <= 0) {
  MSG_REQUEST_HEADER *msg_hdr = req->req_vbuf;
  req->state |= REQ_STATE_TIMEDOUT;
  mpt_prt(mpt, "mpt_wait_req(%x) timed out\n", msg_hdr->Function);
  return (ETIMEDOUT);
 }
 return (0);
}
