
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct ifnet {int dummy; } ;
struct et_hw_stats {scalar_t__ rx_drop; scalar_t__ rx_jabbers; scalar_t__ rx_runts; scalar_t__ rx_cserrs; scalar_t__ rx_codeerrs; scalar_t__ rx_lenerrs; scalar_t__ rx_alignerrs; scalar_t__ rx_crcerrs; scalar_t__ rx_frames; scalar_t__ tx_late_colls; scalar_t__ tx_excess_deferred; scalar_t__ tx_crcerrs; scalar_t__ tx_jabbers; scalar_t__ tx_drop; scalar_t__ tx_total_colls; scalar_t__ tx_frames; } ;
struct et_softc {struct et_hw_stats sc_stats; } ;
typedef int ift_counter ;







 scalar_t__ if_get_counter_default (struct ifnet*,int) ;
 struct et_softc* if_getsoftc (struct ifnet*) ;

__attribute__((used)) static uint64_t
et_get_counter(struct ifnet *ifp, ift_counter cnt)
{
 struct et_softc *sc;
 struct et_hw_stats *stats;

 sc = if_getsoftc(ifp);
 stats = &sc->sc_stats;

 switch (cnt) {
 case 128:
  return (stats->tx_frames);
 case 132:
  return (stats->tx_total_colls);
 case 129:
  return (stats->tx_drop + stats->tx_jabbers +
      stats->tx_crcerrs + stats->tx_excess_deferred +
      stats->tx_late_colls);
 case 130:
  return (stats->rx_frames);
 case 131:
  return (stats->rx_crcerrs + stats->rx_alignerrs +
      stats->rx_lenerrs + stats->rx_codeerrs + stats->rx_cserrs +
      stats->rx_runts + stats->rx_jabbers + stats->rx_drop);
 default:
  return (if_get_counter_default(ifp, cnt));
 }
}
