
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rl_tx_list_map; int rl_tx_list_tag; } ;
struct rl_softc {int rl_watchdog_timer; int rl_txstart; TYPE_1__ rl_ldata; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_1 (struct rl_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct rl_softc*,int ,int) ;
 int RL_TIMERCNT ;
 int RL_TXSTART_START ;
 int bus_dmamap_sync (int ,int ,int) ;

__attribute__((used)) static void
re_start_tx(struct rl_softc *sc)
{


 bus_dmamap_sync(sc->rl_ldata.rl_tx_list_tag,
     sc->rl_ldata.rl_tx_list_map,
     BUS_DMASYNC_PREWRITE|BUS_DMASYNC_PREREAD);

 CSR_WRITE_1(sc, sc->rl_txstart, RL_TXSTART_START);
 sc->rl_watchdog_timer = 5;
}
