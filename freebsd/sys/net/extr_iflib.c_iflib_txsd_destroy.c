
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* iflib_txq_t ;
typedef int if_ctx_t ;
typedef int * bus_dmamap_t ;
struct TYPE_4__ {int ** ifsd_tso_map; int ** ifsd_map; } ;
struct TYPE_5__ {TYPE_1__ ift_sds; int ift_tso_buf_tag; int ift_buf_tag; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int bus_dmamap_destroy (int ,int *) ;
 int bus_dmamap_sync (int ,int *,int ) ;
 int bus_dmamap_unload (int ,int *) ;

__attribute__((used)) static void
iflib_txsd_destroy(if_ctx_t ctx, iflib_txq_t txq, int i)
{
 bus_dmamap_t map;

 if (txq->ift_sds.ifsd_map != ((void*)0)) {
  map = txq->ift_sds.ifsd_map[i];
  bus_dmamap_sync(txq->ift_buf_tag, map, BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(txq->ift_buf_tag, map);
  bus_dmamap_destroy(txq->ift_buf_tag, map);
  txq->ift_sds.ifsd_map[i] = ((void*)0);
 }

 if (txq->ift_sds.ifsd_tso_map != ((void*)0)) {
  map = txq->ift_sds.ifsd_tso_map[i];
  bus_dmamap_sync(txq->ift_tso_buf_tag, map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(txq->ift_tso_buf_tag, map);
  bus_dmamap_destroy(txq->ift_tso_buf_tag, map);
  txq->ift_sds.ifsd_tso_map[i] = ((void*)0);
 }
}
