
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_long ;
struct usie_softc {int sc_rssi; int sc_mtx; int sc_dev; } ;
struct ifnet {int if_flags; int if_drv_flags; struct usie_softc* if_softc; } ;
struct ifmediareq {int ifm_count; } ;
struct ieee80211req_sta_info {int isi_len; int isi_rssi; } ;
struct ieee80211req {scalar_t__ i_data; int i_type; } ;
typedef int si ;
typedef scalar_t__ caddr_t ;


 int DPRINTF (char*) ;
 int EINVAL ;
 int IEEE80211_IOC_STA_INFO ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;





 int USIE_CNS_ID_RSSI ;
 int USIE_CNS_OB_RSSI ;
 int copyout (struct ieee80211req_sta_info*,int *,int) ;
 int device_printf (int ,char*) ;
 int memset (struct ieee80211req_sta_info*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usie_cns_req (struct usie_softc*,int ,int ) ;
 int usie_if_init (struct usie_softc*) ;
 int usie_if_stop (struct usie_softc*) ;

__attribute__((used)) static int
usie_if_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct usie_softc *sc = ifp->if_softc;
 struct ieee80211req *ireq;
 struct ieee80211req_sta_info si;
 struct ifmediareq *ifmr;

 switch (cmd) {
 case 128:
  if (ifp->if_flags & IFF_UP) {
   if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
    usie_if_init(sc);
  } else {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING)
    usie_if_stop(sc);
  }
  break;

 case 129:
  if (!(ifp->if_drv_flags & IFF_DRV_RUNNING)) {
   device_printf(sc->sc_dev,
       "Connect to the network first.\n");
   break;
  }
  mtx_lock(&sc->sc_mtx);
  usie_cns_req(sc, USIE_CNS_ID_RSSI, USIE_CNS_OB_RSSI);
  mtx_unlock(&sc->sc_mtx);
  break;

 case 132:
  ireq = (struct ieee80211req *)data;

  if (ireq->i_type != IEEE80211_IOC_STA_INFO)
   break;

  memset(&si, 0, sizeof(si));
  si.isi_len = sizeof(si);




  si.isi_rssi = 2 * sc->sc_rssi;
  if (copyout(&si, (uint8_t *)ireq->i_data + 8,
      sizeof(struct ieee80211req_sta_info)))
   DPRINTF("copyout failed\n");
  DPRINTF("80211\n");
  break;

 case 131:
  ifmr = (struct ifmediareq *)data;
  ifmr->ifm_count = 1;
  DPRINTF("media\n");
  break;

 case 130:
  break;

 default:
  return (EINVAL);
 }
 return (0);
}
