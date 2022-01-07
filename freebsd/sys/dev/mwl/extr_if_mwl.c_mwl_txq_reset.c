
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mwl_txbuf* dd_bufptr; } ;
struct mwl_txq {int nfree; int free; TYPE_1__ dma; } ;
struct mwl_txbuf {int dummy; } ;
struct mwl_softc {int dummy; } ;


 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct mwl_txbuf*,int ) ;
 int bf_list ;
 int mwl_txbuf ;

__attribute__((used)) static void
mwl_txq_reset(struct mwl_softc *sc, struct mwl_txq *txq)
{
 struct mwl_txbuf *bf;
 int i;

 bf = txq->dma.dd_bufptr;
 STAILQ_INIT(&txq->free);
 for (i = 0; i < mwl_txbuf; i++, bf++)
  STAILQ_INSERT_TAIL(&txq->free, bf, bf_list);
 txq->nfree = i;
}
