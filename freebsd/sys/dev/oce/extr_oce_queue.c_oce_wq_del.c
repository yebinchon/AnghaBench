
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct oce_wq {scalar_t__ qstate; int * cq; int wq_id; int parent; } ;
struct oce_mbx {int payload; } ;
struct TYPE_3__ {int wq_id; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
struct mbx_delete_nic_wq {TYPE_2__ params; } ;
typedef int POCE_SOFTC ;


 scalar_t__ QCREATED ;
 scalar_t__ QDELETED ;
 int QTYPE_WQ ;
 int bzero (struct oce_mbx*,int) ;
 int oce_cq_del (int ,int *) ;
 int oce_destroy_q (int ,struct oce_mbx*,int,int ,int ) ;

__attribute__((used)) static void
oce_wq_del(struct oce_wq *wq)
{
 struct oce_mbx mbx;
 struct mbx_delete_nic_wq *fwcmd;
 POCE_SOFTC sc = (POCE_SOFTC) wq->parent;

 if (wq->qstate == QCREATED) {
  bzero(&mbx, sizeof(struct oce_mbx));

  fwcmd = (struct mbx_delete_nic_wq *)&mbx.payload;
  fwcmd->params.req.wq_id = wq->wq_id;
  (void)oce_destroy_q(sc, &mbx,
    sizeof(struct mbx_delete_nic_wq), QTYPE_WQ, 0);
  wq->qstate = QDELETED;
 }

 if (wq->cq != ((void*)0)) {
  oce_cq_del(sc, wq->cq);
  wq->cq = ((void*)0);
 }
}
