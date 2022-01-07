
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* iflib_rxq_t ;
typedef TYPE_3__* iflib_fl_t ;
struct TYPE_9__ {TYPE_3__* ifsd_map; TYPE_3__* ifsd_ba; TYPE_3__* ifsd_cl; TYPE_3__* ifsd_m; } ;
struct TYPE_11__ {int ifl_size; TYPE_1__ ifl_sds; int * ifl_buf_tag; } ;
struct TYPE_10__ {int ifr_nfl; scalar_t__ ifr_cq_cidx; TYPE_3__* ifr_ifdi; TYPE_3__* ifr_fl; } ;


 int BUS_DMASYNC_POSTREAD ;
 int M_IFLIB ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,TYPE_3__) ;
 int bus_dmamap_sync (int *,TYPE_3__,int ) ;
 int bus_dmamap_unload (int *,TYPE_3__) ;
 int free (TYPE_3__*,int ) ;

__attribute__((used)) static void
iflib_rx_sds_free(iflib_rxq_t rxq)
{
 iflib_fl_t fl;
 int i, j;

 if (rxq->ifr_fl != ((void*)0)) {
  for (i = 0; i < rxq->ifr_nfl; i++) {
   fl = &rxq->ifr_fl[i];
   if (fl->ifl_buf_tag != ((void*)0)) {
    if (fl->ifl_sds.ifsd_map != ((void*)0)) {
     for (j = 0; j < fl->ifl_size; j++) {
      bus_dmamap_sync(
          fl->ifl_buf_tag,
          fl->ifl_sds.ifsd_map[j],
          BUS_DMASYNC_POSTREAD);
      bus_dmamap_unload(
          fl->ifl_buf_tag,
          fl->ifl_sds.ifsd_map[j]);
      bus_dmamap_destroy(
          fl->ifl_buf_tag,
          fl->ifl_sds.ifsd_map[j]);
     }
    }
    bus_dma_tag_destroy(fl->ifl_buf_tag);
    fl->ifl_buf_tag = ((void*)0);
   }
   free(fl->ifl_sds.ifsd_m, M_IFLIB);
   free(fl->ifl_sds.ifsd_cl, M_IFLIB);
   free(fl->ifl_sds.ifsd_ba, M_IFLIB);
   free(fl->ifl_sds.ifsd_map, M_IFLIB);
   fl->ifl_sds.ifsd_m = ((void*)0);
   fl->ifl_sds.ifsd_cl = ((void*)0);
   fl->ifl_sds.ifsd_ba = ((void*)0);
   fl->ifl_sds.ifsd_map = ((void*)0);
  }
  free(rxq->ifr_fl, M_IFLIB);
  rxq->ifr_fl = ((void*)0);
  free(rxq->ifr_ifdi, M_IFLIB);
  rxq->ifr_ifdi = ((void*)0);
  rxq->ifr_cq_cidx = 0;
 }
}
