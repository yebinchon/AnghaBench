
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rl_rx_desc_cnt; scalar_t__ rl_rx_prodidx; int rl_rx_list_map; int rl_rx_list_tag; TYPE_1__* rl_rx_desc; int rl_rx_list; } ;
struct rl_softc {scalar_t__ rl_int_rx_act; int * rl_tail; int rl_head; TYPE_2__ rl_ldata; } ;
struct rl_desc {int dummy; } ;
struct TYPE_3__ {int * rx_m; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int ,int) ;
 int re_netmap_rx_init (struct rl_softc*) ;
 int re_newbuf (struct rl_softc*,int) ;

__attribute__((used)) static int
re_rx_list_init(struct rl_softc *sc)
{
 int error, i;

 bzero(sc->rl_ldata.rl_rx_list,
     sc->rl_ldata.rl_rx_desc_cnt * sizeof(struct rl_desc));
 for (i = 0; i < sc->rl_ldata.rl_rx_desc_cnt; i++) {
  sc->rl_ldata.rl_rx_desc[i].rx_m = ((void*)0);
  if ((error = re_newbuf(sc, i)) != 0)
   return (error);
 }






 bus_dmamap_sync(sc->rl_ldata.rl_rx_list_tag,
     sc->rl_ldata.rl_rx_list_map,
     BUS_DMASYNC_PREWRITE|BUS_DMASYNC_PREREAD);

 sc->rl_ldata.rl_rx_prodidx = 0;
 sc->rl_head = sc->rl_tail = ((void*)0);
 sc->rl_int_rx_act = 0;

 return (0);
}
