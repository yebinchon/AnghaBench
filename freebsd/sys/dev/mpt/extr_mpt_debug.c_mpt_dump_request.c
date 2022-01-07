
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int uint32_t ;
struct TYPE_4__ {int RequestFrameSize; } ;
struct mpt_softc {TYPE_1__ ioc_facts; } ;
struct TYPE_5__ {scalar_t__ req_pbuf; int index; int * req_vbuf; } ;
typedef TYPE_2__ request_t ;


 int mpt_prt (struct mpt_softc*,char*,...) ;
 int mpt_prtc (struct mpt_softc*,char*,...) ;

void
mpt_dump_request(struct mpt_softc *mpt, request_t *req)
{
        uint32_t *pReq = req->req_vbuf;
 int o;

 mpt_prt(mpt, "Send Request %d (%jx):",
     req->index, (uintmax_t) req->req_pbuf);
 for (o = 0; o < mpt->ioc_facts.RequestFrameSize; o++) {
  if ((o & 0x7) == 0) {
   mpt_prtc(mpt, "\n");
   mpt_prt(mpt, " ");
  }
  mpt_prtc(mpt, " %08x", pReq[o]);
 }
 mpt_prtc(mpt, "\n");
}
