
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct oce_mbx {int payload; } ;
struct oce_eq {int eq_id; int * ring; int parent; } ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
struct mbx_destroy_common_eq {TYPE_2__ params; } ;
typedef int mbx ;
typedef int POCE_SOFTC ;


 int M_DEVBUF ;
 int QTYPE_EQ ;
 int bzero (struct oce_mbx*,int) ;
 int free (struct oce_eq*,int ) ;
 int oce_destroy_q (int ,struct oce_mbx*,int,int ,int ) ;
 int oce_destroy_ring_buffer (int ,int *) ;

__attribute__((used)) static void
oce_eq_del(struct oce_eq *eq)
{
 struct oce_mbx mbx;
 struct mbx_destroy_common_eq *fwcmd;
 POCE_SOFTC sc = (POCE_SOFTC) eq->parent;

 if (eq->eq_id != 0xffff) {
  bzero(&mbx, sizeof(mbx));
  fwcmd = (struct mbx_destroy_common_eq *)&mbx.payload;
  fwcmd->params.req.id = eq->eq_id;
  (void)oce_destroy_q(sc, &mbx,
   sizeof(struct mbx_destroy_common_eq), QTYPE_EQ, 0);
 }

 if (eq->ring != ((void*)0)) {
  oce_destroy_ring_buffer(sc, eq->ring);
  eq->ring = ((void*)0);
 }

 free(eq, M_DEVBUF);

}
