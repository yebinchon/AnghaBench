
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rl_tx_desc_cnt; int rl_tx_free; scalar_t__ rl_tx_considx; scalar_t__ rl_tx_prodidx; int rl_tx_list_map; int rl_tx_list_tag; struct rl_desc* rl_tx_list; TYPE_1__* rl_tx_desc; } ;
struct rl_softc {TYPE_2__ rl_ldata; } ;
struct rl_desc {int rl_cmdstat; } ;
struct TYPE_3__ {int * tx_m; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 int RL_TDESC_CMD_EOR ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (struct rl_desc*,int) ;
 int htole32 (int ) ;
 int re_netmap_tx_init (struct rl_softc*) ;

__attribute__((used)) static int
re_tx_list_init(struct rl_softc *sc)
{
 struct rl_desc *desc;
 int i;

 RL_LOCK_ASSERT(sc);

 bzero(sc->rl_ldata.rl_tx_list,
     sc->rl_ldata.rl_tx_desc_cnt * sizeof(struct rl_desc));
 for (i = 0; i < sc->rl_ldata.rl_tx_desc_cnt; i++)
  sc->rl_ldata.rl_tx_desc[i].tx_m = ((void*)0);




 desc = &sc->rl_ldata.rl_tx_list[sc->rl_ldata.rl_tx_desc_cnt - 1];
 desc->rl_cmdstat |= htole32(RL_TDESC_CMD_EOR);

 bus_dmamap_sync(sc->rl_ldata.rl_tx_list_tag,
     sc->rl_ldata.rl_tx_list_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 sc->rl_ldata.rl_tx_prodidx = 0;
 sc->rl_ldata.rl_tx_considx = 0;
 sc->rl_ldata.rl_tx_free = sc->rl_ldata.rl_tx_desc_cnt;

 return (0);
}
