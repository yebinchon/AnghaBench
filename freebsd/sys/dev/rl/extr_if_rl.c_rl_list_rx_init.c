
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rl_rx_dmamap; int rl_tx_tag; int rl_rx_buf_ptr; } ;
struct rl_softc {TYPE_1__ rl_cdata; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 scalar_t__ RL_RXBUFLEN ;
 scalar_t__ RL_RX_8139_BUF_GUARD_SZ ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int ,scalar_t__) ;

__attribute__((used)) static int
rl_list_rx_init(struct rl_softc *sc)
{

 RL_LOCK_ASSERT(sc);

 bzero(sc->rl_cdata.rl_rx_buf_ptr,
     RL_RXBUFLEN + RL_RX_8139_BUF_GUARD_SZ);
 bus_dmamap_sync(sc->rl_cdata.rl_tx_tag, sc->rl_cdata.rl_rx_dmamap,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 return (0);
}
