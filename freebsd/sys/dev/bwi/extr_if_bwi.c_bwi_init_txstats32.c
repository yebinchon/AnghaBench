
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_txstats_data {int stats_paddr; int stats_ring_paddr; int stats_ctrl_base; int stats_ring_dmap; int stats_ring_dtag; int stats_ring; scalar_t__ stats_idx; int stats_dmap; int stats_dtag; int stats; } ;
struct bwi_txstats {int dummy; } ;
struct bwi_softc {struct bwi_txstats_data* sc_txstats; } ;
typedef int bus_addr_t ;


 int BUS_DMASYNC_PREWRITE ;
 int BWI_TXSTATS_NDESC ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bwi_init_rxdesc_ring32 (struct bwi_softc*,int ,int ,int ,int) ;
 int bwi_setup_desc32 (struct bwi_softc*,int ,int,int,int,int,int ) ;
 int bzero (int ,int) ;

__attribute__((used)) static int
bwi_init_txstats32(struct bwi_softc *sc)
{
 struct bwi_txstats_data *st = sc->sc_txstats;
 bus_addr_t stats_paddr;
 int i;

 bzero(st->stats, BWI_TXSTATS_NDESC * sizeof(struct bwi_txstats));
 bus_dmamap_sync(st->stats_dtag, st->stats_dmap, BUS_DMASYNC_PREWRITE);

 st->stats_idx = 0;

 stats_paddr = st->stats_paddr;
 for (i = 0; i < BWI_TXSTATS_NDESC; ++i) {
  bwi_setup_desc32(sc, st->stats_ring, BWI_TXSTATS_NDESC, i,
     stats_paddr, sizeof(struct bwi_txstats), 0);
  stats_paddr += sizeof(struct bwi_txstats);
 }
 bus_dmamap_sync(st->stats_ring_dtag, st->stats_ring_dmap,
   BUS_DMASYNC_PREWRITE);

 bwi_init_rxdesc_ring32(sc, st->stats_ctrl_base,
          st->stats_ring_paddr, 0, BWI_TXSTATS_NDESC);
 return 0;
}
