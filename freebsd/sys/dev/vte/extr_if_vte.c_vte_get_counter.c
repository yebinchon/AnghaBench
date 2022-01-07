
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vte_hw_stats {scalar_t__ rx_fifo_full; scalar_t__ rx_long_frames; scalar_t__ rx_runts; scalar_t__ rx_crcerrs; scalar_t__ rx_frames; scalar_t__ tx_underruns; scalar_t__ tx_late_colls; scalar_t__ tx_frames; } ;
struct vte_softc {struct vte_hw_stats vte_stats; } ;
struct ifnet {int dummy; } ;
typedef int ift_counter ;







 scalar_t__ if_get_counter_default (struct ifnet*,int) ;
 struct vte_softc* if_getsoftc (struct ifnet*) ;

__attribute__((used)) static uint64_t
vte_get_counter(struct ifnet *ifp, ift_counter cnt)
{
 struct vte_softc *sc;
 struct vte_hw_stats *stat;

 sc = if_getsoftc(ifp);
 stat = &sc->vte_stats;

 switch (cnt) {
 case 128:
  return (stat->tx_frames);
 case 132:
  return (stat->tx_late_colls);
 case 129:
  return (stat->tx_late_colls + stat->tx_underruns);
 case 130:
  return (stat->rx_frames);
 case 131:
  return (stat->rx_crcerrs + stat->rx_runts +
      stat->rx_long_frames + stat->rx_fifo_full);
 default:
  return (if_get_counter_default(ifp, cnt));
 }
}
