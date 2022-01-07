
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct mpt_softc {int dummy; } ;
struct TYPE_7__ {int serno; } ;
typedef TYPE_1__ request_t ;
struct TYPE_8__ {int state; int itag; int tag_id; int nxfers; int req; int ccb; int bytes_xfered; int resid; int reply_desc; } ;
typedef TYPE_2__ mpt_tgt_state_t ;


 TYPE_2__* MPT_TGT_STATE (struct mpt_softc*,TYPE_1__*) ;
 int mpt_prt (struct mpt_softc*,char*,TYPE_1__*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
mpt_tgt_dump_tgt_state(struct mpt_softc *mpt, request_t *req)
{
 mpt_tgt_state_t *tgt = MPT_TGT_STATE(mpt, req);

 mpt_prt(mpt, "req %p:%u tgt:rdesc 0x%x resid %u xfrd %u ccb %p treq %p "
     "nx %d tag 0x%08x itag 0x%04x state=%d\n", req, req->serno,
     tgt->reply_desc, tgt->resid, tgt->bytes_xfered, tgt->ccb,
     tgt->req, tgt->nxfers, tgt->tag_id, tgt->itag, tgt->state);
}
