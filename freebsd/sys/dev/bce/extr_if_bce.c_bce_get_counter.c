
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct ifnet {int dummy; } ;
struct bce_softc {scalar_t__ stat_Dot3StatsCarrierSenseErrors; scalar_t__ watchdog_timeouts; scalar_t__ stat_Dot3StatsLateCollisions; scalar_t__ stat_emac_tx_stat_dot3statsinternalmactransmiterrors; scalar_t__ stat_Dot3StatsExcessiveCollisions; scalar_t__ com_no_buffers; scalar_t__ l2fhdr_error_count; scalar_t__ stat_IfInFTQDiscards; scalar_t__ stat_IfInRuleCheckerDiscards; scalar_t__ stat_Dot3StatsFCSErrors; scalar_t__ stat_Dot3StatsAlignmentErrors; scalar_t__ stat_IfInMBUFDiscards; scalar_t__ stat_EtherStatsOversizePkts; scalar_t__ stat_EtherStatsUndersizePkts; scalar_t__ stat_EtherStatsCollisions; } ;
typedef int ift_counter ;


 int BCE_CHIP_ID (struct bce_softc*) ;
 int BCE_CHIP_ID_5708_A0 ;
 int BCE_CHIP_NUM (struct bce_softc*) ;
 int BCE_CHIP_NUM_5706 ;



 scalar_t__ if_get_counter_default (struct ifnet*,int) ;
 struct bce_softc* if_getsoftc (struct ifnet*) ;

__attribute__((used)) static uint64_t
bce_get_counter(struct ifnet *ifp, ift_counter cnt)
{
 struct bce_softc *sc;
 uint64_t rv;

 sc = if_getsoftc(ifp);

 switch (cnt) {
 case 130:
  return (sc->stat_EtherStatsCollisions);
 case 129:
  return (sc->stat_EtherStatsUndersizePkts +
      sc->stat_EtherStatsOversizePkts +
      sc->stat_IfInMBUFDiscards +
      sc->stat_Dot3StatsAlignmentErrors +
      sc->stat_Dot3StatsFCSErrors +
      sc->stat_IfInRuleCheckerDiscards +
      sc->stat_IfInFTQDiscards +
      sc->l2fhdr_error_count +
      sc->com_no_buffers);
 case 128:
  rv = sc->stat_Dot3StatsExcessiveCollisions +
      sc->stat_emac_tx_stat_dot3statsinternalmactransmiterrors +
      sc->stat_Dot3StatsLateCollisions +
      sc->watchdog_timeouts;





  if (!(BCE_CHIP_NUM(sc) == BCE_CHIP_NUM_5706) &&
      !(BCE_CHIP_ID(sc) == BCE_CHIP_ID_5708_A0))
   rv += sc->stat_Dot3StatsCarrierSenseErrors;
  return (rv);
 default:
  return (if_get_counter_default(ifp, cnt));
 }
}
