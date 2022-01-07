
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct mpt_softc {int getreqwaiter; int request_free_list; TYPE_1__* request_pool; } ;
struct TYPE_7__ {size_t index; scalar_t__ state; int * chain; scalar_t__ req_vbuf; int serno; } ;
typedef TYPE_1__ request_t ;
struct TYPE_8__ {int Function; } ;
typedef TYPE_2__ MSG_REQUEST_HEADER ;


 int KASSERT (int,char*) ;
 int MPT_LOCK_ASSERT (struct mpt_softc*) ;
 int PUSER ;
 scalar_t__ REQ_STATE_ALLOCATED ;
 scalar_t__ REQ_STATE_FREE ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int links ;
 int mpt_assign_serno (struct mpt_softc*,TYPE_1__*) ;
 int mpt_sleep (struct mpt_softc*,int *,int ,char*,int ) ;

request_t *
mpt_get_request(struct mpt_softc *mpt, int sleep_ok)
{
 request_t *req;

retry:
 MPT_LOCK_ASSERT(mpt);
 req = TAILQ_FIRST(&mpt->request_free_list);
 if (req != ((void*)0)) {
  KASSERT(req == &mpt->request_pool[req->index],
      ("mpt_get_request: corrupted request free list"));
  KASSERT(req->state == REQ_STATE_FREE,
      ("req %p:%u not free on free list %x index %d function %x",
      req, req->serno, req->state, req->index,
      ((MSG_REQUEST_HEADER *)req->req_vbuf)->Function));
  TAILQ_REMOVE(&mpt->request_free_list, req, links);
  req->state = REQ_STATE_ALLOCATED;
  req->chain = ((void*)0);
  mpt_assign_serno(mpt, req);
 } else if (sleep_ok != 0) {
  mpt->getreqwaiter = 1;
  mpt_sleep(mpt, &mpt->request_free_list, PUSER, "mptgreq", 0);
  goto retry;
 }
 return (req);
}
