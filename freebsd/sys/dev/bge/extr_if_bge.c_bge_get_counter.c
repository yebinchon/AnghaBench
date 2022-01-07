
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct bge_mac_stats {scalar_t__ etherStatsCollisions; scalar_t__ InputErrors; scalar_t__ InputDiscards; scalar_t__ NoMoreRxBDs; } ;
struct bge_softc {struct bge_mac_stats bge_mac_stats; } ;
typedef int ift_counter ;
typedef int if_t ;


 int BGE_IS_5705_PLUS (struct bge_softc*) ;


 scalar_t__ if_get_counter_default (int ,int) ;
 struct bge_softc* if_getsoftc (int ) ;

__attribute__((used)) static uint64_t
bge_get_counter(if_t ifp, ift_counter cnt)
{
 struct bge_softc *sc;
 struct bge_mac_stats *stats;

 sc = if_getsoftc(ifp);
 if (!BGE_IS_5705_PLUS(sc))
  return (if_get_counter_default(ifp, cnt));
 stats = &sc->bge_mac_stats;

 switch (cnt) {
 case 128:
  return (stats->NoMoreRxBDs + stats->InputDiscards +
      stats->InputErrors);
 case 129:
  return (stats->etherStatsCollisions);
 default:
  return (if_get_counter_default(ifp, cnt));
 }
}
