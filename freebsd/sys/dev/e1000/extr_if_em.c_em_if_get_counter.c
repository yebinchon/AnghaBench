
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {scalar_t__ latecol; scalar_t__ ecol; scalar_t__ cexterr; scalar_t__ mpc; scalar_t__ roc; scalar_t__ ruc; scalar_t__ algnerrc; scalar_t__ crcerrs; scalar_t__ rxerrc; scalar_t__ colc; } ;
struct adapter {scalar_t__ watchdog_events; TYPE_1__ stats; scalar_t__ dropped_pkts; } ;
typedef int ift_counter ;
typedef int if_ctx_t ;





 scalar_t__ if_get_counter_default (struct ifnet*,int) ;
 struct ifnet* iflib_get_ifp (int ) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static uint64_t
em_if_get_counter(if_ctx_t ctx, ift_counter cnt)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ifnet *ifp = iflib_get_ifp(ctx);

 switch (cnt) {
 case 130:
  return (adapter->stats.colc);
 case 129:
  return (adapter->dropped_pkts + adapter->stats.rxerrc +
      adapter->stats.crcerrs + adapter->stats.algnerrc +
      adapter->stats.ruc + adapter->stats.roc +
      adapter->stats.mpc + adapter->stats.cexterr);
 case 128:
  return (adapter->stats.ecol + adapter->stats.latecol +
      adapter->watchdog_events);
 default:
  return (if_get_counter_default(ifp, cnt));
 }
}
