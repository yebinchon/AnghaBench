
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vtnet_txq_stats {int vtxs_omcasts; int vtxs_obytes; int vtxs_opackets; } ;
struct vtnet_softc {int dummy; } ;
struct vtnet_rxq_stats {int vrxs_ierrors; int vrxs_iqdrops; int vrxs_ipackets; } ;
typedef int ift_counter ;
typedef int if_t ;
 int if_get_counter_default (int ,int) ;
 struct vtnet_softc* if_getsoftc (int ) ;
 int vtnet_accum_stats (struct vtnet_softc*,struct vtnet_rxq_stats*,struct vtnet_txq_stats*) ;

__attribute__((used)) static uint64_t
vtnet_get_counter(if_t ifp, ift_counter cnt)
{
 struct vtnet_softc *sc;
 struct vtnet_rxq_stats rxaccum;
 struct vtnet_txq_stats txaccum;

 sc = if_getsoftc(ifp);
 vtnet_accum_stats(sc, &rxaccum, &txaccum);

 switch (cnt) {
 case 132:
  return (rxaccum.vrxs_ipackets);
 case 131:
  return (rxaccum.vrxs_iqdrops);
 case 133:
  return (rxaccum.vrxs_ierrors);
 case 128:
  return (txaccum.vtxs_opackets);

 case 130:
  return (txaccum.vtxs_obytes);
 case 129:
  return (txaccum.vtxs_omcasts);

 default:
  return (if_get_counter_default(ifp, cnt));
 }
}
