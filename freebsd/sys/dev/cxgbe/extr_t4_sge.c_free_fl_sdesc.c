
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sge_fl {int sidx; struct fl_sdesc* sdesc; } ;
struct cluster_layout {size_t zidx; } ;
struct fl_sdesc {scalar_t__ nmbuf; int * cl; struct cluster_layout cll; } ;
struct cluster_metadata {int refcount; } ;
struct TYPE_4__ {TYPE_1__* sw_zone_info; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_3__ {int zone; } ;


 int M_CXGBE ;
 int atomic_fetchadd_int (int *,int) ;
 struct cluster_metadata* cl_metadata (struct adapter*,struct sge_fl*,struct cluster_layout*,int *) ;
 int counter_u64_add (int ,int) ;
 int extfree_rels ;
 int free (struct fl_sdesc*,int ) ;
 int uma_zfree (int ,int *) ;

__attribute__((used)) static void
free_fl_sdesc(struct adapter *sc, struct sge_fl *fl)
{
 struct fl_sdesc *sd;
 struct cluster_metadata *clm;
 struct cluster_layout *cll;
 int i;

 sd = fl->sdesc;
 for (i = 0; i < fl->sidx * 8; i++, sd++) {
  if (sd->cl == ((void*)0))
   continue;

  cll = &sd->cll;
  clm = cl_metadata(sc, fl, cll, sd->cl);
  if (sd->nmbuf == 0)
   uma_zfree(sc->sge.sw_zone_info[cll->zidx].zone, sd->cl);
  else if (clm && atomic_fetchadd_int(&clm->refcount, -1) == 1) {
   uma_zfree(sc->sge.sw_zone_info[cll->zidx].zone, sd->cl);
   counter_u64_add(extfree_rels, 1);
  }
  sd->cl = ((void*)0);
 }

 free(fl->sdesc, M_CXGBE);
 fl->sdesc = ((void*)0);
}
