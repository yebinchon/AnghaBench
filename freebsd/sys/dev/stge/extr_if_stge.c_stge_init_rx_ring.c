
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stge_rx_ring_map; int stge_rx_ring_tag; scalar_t__ stge_rx_cons; } ;
struct stge_ring_data {TYPE_2__* stge_rx_ring; } ;
struct stge_softc {TYPE_1__ sc_cdata; struct stge_ring_data sc_rdata; } ;
typedef int bus_addr_t ;
struct TYPE_4__ {scalar_t__ rfd_status; int rfd_next; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ENOBUFS ;
 int STGE_RXCHAIN_RESET (struct stge_softc*) ;
 int STGE_RX_RING_ADDR (struct stge_softc*,int) ;
 int STGE_RX_RING_CNT ;
 int STGE_RX_RING_SZ ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (TYPE_2__*,int ) ;
 int htole64 (int ) ;
 scalar_t__ stge_newbuf (struct stge_softc*,int) ;

__attribute__((used)) static int
stge_init_rx_ring(struct stge_softc *sc)
{
 struct stge_ring_data *rd;
 bus_addr_t addr;
 int i;

 sc->sc_cdata.stge_rx_cons = 0;
 STGE_RXCHAIN_RESET(sc);

 rd = &sc->sc_rdata;
 bzero(rd->stge_rx_ring, STGE_RX_RING_SZ);
 for (i = 0; i < STGE_RX_RING_CNT; i++) {
  if (stge_newbuf(sc, i) != 0)
   return (ENOBUFS);
  if (i == (STGE_RX_RING_CNT - 1))
   addr = STGE_RX_RING_ADDR(sc, 0);
  else
   addr = STGE_RX_RING_ADDR(sc, i + 1);
  rd->stge_rx_ring[i].rfd_next = htole64(addr);
  rd->stge_rx_ring[i].rfd_status = 0;
 }

 bus_dmamap_sync(sc->sc_cdata.stge_rx_ring_tag,
     sc->sc_cdata.stge_rx_ring_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 return (0);
}
