
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_6__ {int mst_rx_packets; int mst_tx_packets; int hw_stats; } ;
struct mwl_softc {TYPE_4__ sc_stats; int sc_mh; } ;
struct mwl_diag {int dummy; } ;
struct ifreq {int dummy; } ;
struct ieee80211com {struct mwl_softc* ic_softc; } ;
struct TYPE_5__ {int (* if_get_counter ) (TYPE_1__*,int ) ;} ;


 int ENOTTY ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_OPACKETS ;
 int MWL_LOCK (struct mwl_softc*) ;
 int MWL_UNLOCK (struct mwl_softc*) ;



 int copyout (TYPE_4__*,int ,int) ;
 TYPE_1__* ifp ;
 int ifr_data_get_ptr (struct ifreq*) ;
 int mwl_hal_gethwstats (int ,int *) ;
 int mwl_ioctl_diag (struct mwl_softc*,struct mwl_diag*) ;
 int mwl_ioctl_reset (struct mwl_softc*,struct mwl_diag*) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ) ;

__attribute__((used)) static int
mwl_ioctl(struct ieee80211com *ic, u_long cmd, void *data)
{
 struct mwl_softc *sc = ic->ic_softc;
 struct ifreq *ifr = data;
 int error = 0;

 switch (cmd) {
 case 128:
  mwl_hal_gethwstats(sc->sc_mh, &sc->sc_stats.hw_stats);
  return (copyout(&sc->sc_stats, ifr_data_get_ptr(ifr),
      sizeof (sc->sc_stats)));
 default:
  error = ENOTTY;
  break;
 }
 return (error);
}
