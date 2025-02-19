
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_tx_ring {int tx_desc_map; int tx_desc_tag; void* desc32; void* desc64; scalar_t__ next; scalar_t__ cur; scalar_t__ queued; } ;
struct nfe_softc {int nfe_flags; scalar_t__ nfe_force_tx; } ;
struct nfe_desc64 {int dummy; } ;
struct nfe_desc32 {int dummy; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int NFE_40BIT_ADDR ;
 size_t NFE_TX_RING_COUNT ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (void*,size_t) ;

__attribute__((used)) static void
nfe_init_tx_ring(struct nfe_softc *sc, struct nfe_tx_ring *ring)
{
 void *desc;
 size_t descsize;

 sc->nfe_force_tx = 0;
 ring->queued = 0;
 ring->cur = ring->next = 0;
 if (sc->nfe_flags & NFE_40BIT_ADDR) {
  desc = ring->desc64;
  descsize = sizeof (struct nfe_desc64);
 } else {
  desc = ring->desc32;
  descsize = sizeof (struct nfe_desc32);
 }
 bzero(desc, descsize * NFE_TX_RING_COUNT);

 bus_dmamap_sync(ring->tx_desc_tag, ring->tx_desc_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
