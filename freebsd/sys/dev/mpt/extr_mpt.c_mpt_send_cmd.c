
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct mpt_softc {scalar_t__ verbose; int request_pending_list; int request_dmap; int request_dmat; } ;
struct TYPE_8__ {scalar_t__ req_pbuf; scalar_t__ req_vbuf; int serno; int state; } ;
typedef TYPE_1__ request_t ;
struct TYPE_9__ {int Function; } ;
typedef TYPE_2__ MSG_REQUEST_HEADER ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int KASSERT (int,char*) ;
 int MPT_OFFSET_REQUEST_Q ;
 scalar_t__ MPT_PRT_DEBUG2 ;
 int REQ_STATE_QUEUED ;
 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int links ;
 int mpt_dump_request (struct mpt_softc*,TYPE_1__*) ;
 scalar_t__ mpt_req_on_free_list (struct mpt_softc*,TYPE_1__*) ;
 scalar_t__ mpt_req_on_pending_list (struct mpt_softc*,TYPE_1__*) ;
 int mpt_write (struct mpt_softc*,int ,int ) ;

void
mpt_send_cmd(struct mpt_softc *mpt, request_t *req)
{

 if (mpt->verbose > MPT_PRT_DEBUG2) {
  mpt_dump_request(mpt, req);
 }
 bus_dmamap_sync(mpt->request_dmat, mpt->request_dmap,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 req->state |= REQ_STATE_QUEUED;
 KASSERT(mpt_req_on_free_list(mpt, req) == 0,
     ("req %p:%u func %x on freelist list in mpt_send_cmd",
     req, req->serno, ((MSG_REQUEST_HEADER *)req->req_vbuf)->Function));
 KASSERT(mpt_req_on_pending_list(mpt, req) == 0,
     ("req %p:%u func %x already on pending list in mpt_send_cmd",
     req, req->serno, ((MSG_REQUEST_HEADER *)req->req_vbuf)->Function));
 TAILQ_INSERT_HEAD(&mpt->request_pending_list, req, links);
 mpt_write(mpt, MPT_OFFSET_REQUEST_Q, (uint32_t) req->req_pbuf);
}
