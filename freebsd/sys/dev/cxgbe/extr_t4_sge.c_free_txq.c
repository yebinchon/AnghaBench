
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vi_info {TYPE_1__* pi; } ;
struct sge_eq {int dummy; } ;
struct sge_txq {int r; int sdesc; int gl; struct sge_eq eq; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {struct adapter* adapter; } ;


 int M_CXGBE ;
 int bzero (struct sge_txq*,int) ;
 int free (int ,int ) ;
 int free_eq (struct adapter*,struct sge_eq*) ;
 int mp_ring_free (int ) ;
 int sglist_free (int ) ;

__attribute__((used)) static int
free_txq(struct vi_info *vi, struct sge_txq *txq)
{
 int rc;
 struct adapter *sc = vi->pi->adapter;
 struct sge_eq *eq = &txq->eq;

 rc = free_eq(sc, eq);
 if (rc)
  return (rc);

 sglist_free(txq->gl);
 free(txq->sdesc, M_CXGBE);
 mp_ring_free(txq->r);

 bzero(txq, sizeof(*txq));
 return (0);
}
