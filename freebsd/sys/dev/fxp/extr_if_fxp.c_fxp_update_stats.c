
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct fxp_stats {scalar_t__ completion_status; scalar_t__ tx_pause; scalar_t__ tx_good; scalar_t__ tx_maxcols; scalar_t__ tx_latecols; scalar_t__ tx_underruns; scalar_t__ tx_lostcrs; scalar_t__ tx_deffered; scalar_t__ tx_single_collisions; scalar_t__ tx_multiple_collisions; scalar_t__ tx_total_collisions; scalar_t__ rx_good; scalar_t__ rx_crc_errors; scalar_t__ rx_alignment_errors; scalar_t__ rx_rnr_errors; scalar_t__ rx_overrun_errors; scalar_t__ rx_cdt_errors; scalar_t__ rx_shortframes; scalar_t__ rx_pause; scalar_t__ rx_controls; int rx_tco; int tx_tco; } ;
struct fxp_hwstats {int rx_tco; int tx_tco; int rx_controls; int rx_pause; int tx_pause; int rx_shortframes; int rx_cdt_errors; int rx_overrun_errors; int rx_rnr_errors; int rx_alignment_errors; int rx_crc_errors; int rx_good; int tx_total_collisions; int tx_multiple_collisions; int tx_single_collisions; int tx_deffered; int tx_lostcrs; int tx_underruns; int tx_latecols; int tx_maxcols; int tx_good; } ;
struct fxp_softc {scalar_t__ revision; int flags; int fxp_smap; int fxp_stag; scalar_t__ rx_idle_secs; struct fxp_hwstats fxp_hwstats; struct fxp_stats* fxp_stats; int ifp; } ;
typedef int if_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int FXP_FLAG_RXBUG ;
 int FXP_LOCK_ASSERT (struct fxp_softc*,int ) ;
 scalar_t__ FXP_REV_82558_A4 ;
 scalar_t__ FXP_REV_82559_A0 ;
 int FXP_STATS_DR_COMPLETE ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int MA_OWNED ;
 int bus_dmamap_sync (int ,int ,int) ;
 scalar_t__ htole32 (int ) ;
 int if_inc_counter (int ,int ,scalar_t__) ;
 scalar_t__ le16toh (int ) ;
 scalar_t__ le32toh (scalar_t__) ;
 int tx_threshold ;

__attribute__((used)) static void
fxp_update_stats(struct fxp_softc *sc)
{
 if_t ifp = sc->ifp;
 struct fxp_stats *sp = sc->fxp_stats;
 struct fxp_hwstats *hsp;
 uint32_t *status;

 FXP_LOCK_ASSERT(sc, MA_OWNED);

 bus_dmamap_sync(sc->fxp_stag, sc->fxp_smap,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 if (sc->revision >= FXP_REV_82559_A0)
  status = &sp->completion_status;
 else if (sc->revision >= FXP_REV_82558_A4)
  status = (uint32_t *)&sp->tx_tco;
 else
  status = &sp->tx_pause;
 if (*status == htole32(FXP_STATS_DR_COMPLETE)) {
  hsp = &sc->fxp_hwstats;
  hsp->tx_good += le32toh(sp->tx_good);
  hsp->tx_maxcols += le32toh(sp->tx_maxcols);
  hsp->tx_latecols += le32toh(sp->tx_latecols);
  hsp->tx_underruns += le32toh(sp->tx_underruns);
  hsp->tx_lostcrs += le32toh(sp->tx_lostcrs);
  hsp->tx_deffered += le32toh(sp->tx_deffered);
  hsp->tx_single_collisions += le32toh(sp->tx_single_collisions);
  hsp->tx_multiple_collisions +=
      le32toh(sp->tx_multiple_collisions);
  hsp->tx_total_collisions += le32toh(sp->tx_total_collisions);
  hsp->rx_good += le32toh(sp->rx_good);
  hsp->rx_crc_errors += le32toh(sp->rx_crc_errors);
  hsp->rx_alignment_errors += le32toh(sp->rx_alignment_errors);
  hsp->rx_rnr_errors += le32toh(sp->rx_rnr_errors);
  hsp->rx_overrun_errors += le32toh(sp->rx_overrun_errors);
  hsp->rx_cdt_errors += le32toh(sp->rx_cdt_errors);
  hsp->rx_shortframes += le32toh(sp->rx_shortframes);
  hsp->tx_pause += le32toh(sp->tx_pause);
  hsp->rx_pause += le32toh(sp->rx_pause);
  hsp->rx_controls += le32toh(sp->rx_controls);
  hsp->tx_tco += le16toh(sp->tx_tco);
  hsp->rx_tco += le16toh(sp->rx_tco);

  if_inc_counter(ifp, IFCOUNTER_OPACKETS, le32toh(sp->tx_good));
  if_inc_counter(ifp, IFCOUNTER_COLLISIONS,
      le32toh(sp->tx_total_collisions));
  if (sp->rx_good) {
   if_inc_counter(ifp, IFCOUNTER_IPACKETS,
       le32toh(sp->rx_good));
   sc->rx_idle_secs = 0;
  } else if (sc->flags & FXP_FLAG_RXBUG) {



   sc->rx_idle_secs++;
  }
  if_inc_counter(ifp, IFCOUNTER_IERRORS,
      le32toh(sp->rx_crc_errors) +
      le32toh(sp->rx_alignment_errors) +
      le32toh(sp->rx_rnr_errors) +
      le32toh(sp->rx_overrun_errors));




  if (sp->tx_underruns) {
   if_inc_counter(ifp, IFCOUNTER_OERRORS,
       le32toh(sp->tx_underruns));
   if (tx_threshold < 192)
    tx_threshold += 64;
  }
  *status = 0;
  bus_dmamap_sync(sc->fxp_stag, sc->fxp_smap,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 }
}
