
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct oce_mq {scalar_t__ qstate; int * cq; int mq_id; int * ring; int parent; } ;
struct oce_mbx {int payload; } ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
struct mbx_destroy_common_mq {TYPE_2__ params; } ;
typedef int POCE_SOFTC ;


 int M_DEVBUF ;
 scalar_t__ QCREATED ;
 scalar_t__ QDELETED ;
 int QTYPE_MQ ;
 int bzero (struct oce_mbx*,int) ;
 int free (struct oce_mq*,int ) ;
 int oce_cq_del (int ,int *) ;
 int oce_destroy_q (int ,struct oce_mbx*,int,int ,int ) ;
 int oce_destroy_ring_buffer (int ,int *) ;

__attribute__((used)) static void
oce_mq_free(struct oce_mq *mq)
{
 POCE_SOFTC sc = (POCE_SOFTC) mq->parent;
 struct oce_mbx mbx;
 struct mbx_destroy_common_mq *fwcmd;

 if (!mq)
  return;

 if (mq->ring != ((void*)0)) {
  oce_destroy_ring_buffer(sc, mq->ring);
  mq->ring = ((void*)0);
  if (mq->qstate == QCREATED) {
   bzero(&mbx, sizeof (struct oce_mbx));
   fwcmd = (struct mbx_destroy_common_mq *)&mbx.payload;
   fwcmd->params.req.id = mq->mq_id;
   (void) oce_destroy_q(sc, &mbx,
    sizeof (struct mbx_destroy_common_mq),
    QTYPE_MQ, 0);
  }
  mq->qstate = QDELETED;
 }

 if (mq->cq != ((void*)0)) {
  oce_cq_del(sc, mq->cq);
  mq->cq = ((void*)0);
 }

 free(mq, M_DEVBUF);
 mq = ((void*)0);
}
