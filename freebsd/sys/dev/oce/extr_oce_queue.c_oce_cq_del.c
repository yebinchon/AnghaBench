
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct oce_mbx {int payload; } ;
struct oce_cq {int * ring; int cq_id; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {TYPE_2__ req; } ;
struct mbx_destroy_common_cq {TYPE_1__ params; } ;
typedef int POCE_SOFTC ;


 int M_DEVBUF ;
 int QTYPE_CQ ;
 int bzero (struct oce_mbx*,int) ;
 int free (struct oce_cq*,int ) ;
 int oce_destroy_q (int ,struct oce_mbx*,int,int ,int ) ;
 int oce_destroy_ring_buffer (int ,int *) ;

__attribute__((used)) static void
oce_cq_del(POCE_SOFTC sc, struct oce_cq *cq)
{
 struct oce_mbx mbx;
 struct mbx_destroy_common_cq *fwcmd;

 if (cq->ring != ((void*)0)) {

  bzero(&mbx, sizeof(struct oce_mbx));

  fwcmd = (struct mbx_destroy_common_cq *)&mbx.payload;
  fwcmd->params.req.id = cq->cq_id;
  (void)oce_destroy_q(sc, &mbx,
   sizeof(struct mbx_destroy_common_cq), QTYPE_CQ, 0);

  oce_destroy_ring_buffer(sc, cq->ring);
  cq->ring = ((void*)0);
 }

 free(cq, M_DEVBUF);
 cq = ((void*)0);
}
