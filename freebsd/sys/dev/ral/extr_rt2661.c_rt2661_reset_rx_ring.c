
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2661_softc {int dummy; } ;
struct rt2661_rx_ring {int count; scalar_t__ next; scalar_t__ cur; int desc_map; int desc_dmat; TYPE_1__* desc; } ;
struct TYPE_2__ {int flags; } ;


 int BUS_DMASYNC_PREWRITE ;
 int RT2661_RX_BUSY ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int htole32 (int ) ;

__attribute__((used)) static void
rt2661_reset_rx_ring(struct rt2661_softc *sc, struct rt2661_rx_ring *ring)
{
 int i;

 for (i = 0; i < ring->count; i++)
  ring->desc[i].flags = htole32(RT2661_RX_BUSY);

 bus_dmamap_sync(ring->desc_dmat, ring->desc_map, BUS_DMASYNC_PREWRITE);

 ring->cur = ring->next = 0;
}
