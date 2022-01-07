
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2560_softc {int dummy; } ;
struct rt2560_rx_ring {int count; scalar_t__ cur_decrypt; scalar_t__ next; scalar_t__ cur; int desc_map; int desc_dmat; TYPE_1__* data; TYPE_2__* desc; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {scalar_t__ drop; } ;


 int BUS_DMASYNC_PREWRITE ;
 int RT2560_RX_BUSY ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int htole32 (int ) ;

__attribute__((used)) static void
rt2560_reset_rx_ring(struct rt2560_softc *sc, struct rt2560_rx_ring *ring)
{
 int i;

 for (i = 0; i < ring->count; i++) {
  ring->desc[i].flags = htole32(RT2560_RX_BUSY);
  ring->data[i].drop = 0;
 }

 bus_dmamap_sync(ring->desc_dmat, ring->desc_map, BUS_DMASYNC_PREWRITE);

 ring->cur = ring->next = 0;
 ring->cur_decrypt = 0;
}
