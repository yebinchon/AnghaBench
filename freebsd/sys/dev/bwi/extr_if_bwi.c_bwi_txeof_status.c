
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_txstats_data {int stats_idx; struct bwi_txstats* stats; int stats_dmap; int stats_dtag; } ;
struct bwi_txstats {int txs_flags; int txs_id; int txs_txcnt; } ;
struct bwi_softc {struct bwi_txstats_data* sc_txstats; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BWI_TXSTATS_NDESC ;
 int BWI_TXS_F_ACKED ;
 int BWI_TXS_F_PENDING ;
 int BWI_TXS_TXCNT_DATA ;
 int __SHIFTOUT (int ,int ) ;
 int _bwi_txeof (struct bwi_softc*,int ,int,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int le16toh (int ) ;

__attribute__((used)) static void
bwi_txeof_status(struct bwi_softc *sc, int end_idx)
{
 struct bwi_txstats_data *st = sc->sc_txstats;
 int idx;

 bus_dmamap_sync(st->stats_dtag, st->stats_dmap, BUS_DMASYNC_POSTREAD);

 idx = st->stats_idx;
 while (idx != end_idx) {
  const struct bwi_txstats *stats = &st->stats[idx];

  if ((stats->txs_flags & BWI_TXS_F_PENDING) == 0) {
   int data_txcnt;

   data_txcnt = __SHIFTOUT(stats->txs_txcnt,
      BWI_TXS_TXCNT_DATA);
   _bwi_txeof(sc, le16toh(stats->txs_id),
       stats->txs_flags & BWI_TXS_F_ACKED,
       data_txcnt);
  }
  idx = (idx + 1) % BWI_TXSTATS_NDESC;
 }
 st->stats_idx = idx;
}
