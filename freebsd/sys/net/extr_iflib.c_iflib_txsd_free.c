
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {int dummy; } ;
typedef TYPE_2__* iflib_txq_t ;
typedef int if_ctx_t ;
struct TYPE_4__ {int * ifsd_tso_map; int * ifsd_map; struct mbuf** ifsd_m; } ;
struct TYPE_5__ {TYPE_1__ ift_sds; int ift_tso_buf_tag; int ift_buf_tag; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int DBG_COUNTER_INC (int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_free (struct mbuf*) ;
 int tx_frees ;

__attribute__((used)) static void
iflib_txsd_free(if_ctx_t ctx, iflib_txq_t txq, int i)
{
 struct mbuf **mp;

 mp = &txq->ift_sds.ifsd_m[i];
 if (*mp == ((void*)0))
  return;

 if (txq->ift_sds.ifsd_map != ((void*)0)) {
  bus_dmamap_sync(txq->ift_buf_tag,
      txq->ift_sds.ifsd_map[i], BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(txq->ift_buf_tag, txq->ift_sds.ifsd_map[i]);
 }
 if (txq->ift_sds.ifsd_tso_map != ((void*)0)) {
  bus_dmamap_sync(txq->ift_tso_buf_tag,
      txq->ift_sds.ifsd_tso_map[i], BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(txq->ift_tso_buf_tag,
      txq->ift_sds.ifsd_tso_map[i]);
 }
 m_free(*mp);
 DBG_COUNTER_INC(tx_frees);
 *mp = ((void*)0);
}
