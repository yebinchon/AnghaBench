
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct mpt_softc {int dummy; } ;
struct TYPE_5__ {int state; int index; int serno; } ;
typedef TYPE_1__ request_t ;


 int mpt_prt (struct mpt_softc*,char*,TYPE_1__*,int ,int ,int ,int ) ;
 int mpt_tgt_dump_tgt_state (struct mpt_softc*,TYPE_1__*) ;

__attribute__((used)) static void
mpt_tgt_dump_req_state(struct mpt_softc *mpt, request_t *req)
{

 mpt_prt(mpt, "req %p:%u index %u (%x) state %x\n", req, req->serno,
     req->index, req->index, req->state);
 mpt_tgt_dump_tgt_state(mpt, req);
}
