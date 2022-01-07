
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vi_info {struct port_info* pi; } ;
struct link_config {int supported; int requested_speed; int requested_fc; int requested_aneg; } ;
struct ifmedia {int ifm_media; } ;
struct port_info {scalar_t__ up_vis; struct adapter* adapter; struct link_config link_cfg; struct ifmedia media; } ;
struct ifnet {struct vi_info* if_softc; } ;
struct adapter {int dummy; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int ENOTSUP ;
 int FW_PORT_CAP32_ANEG ;
 scalar_t__ IFM_AUTO ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_OPTIONS (int ) ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 int INTR_OK ;
 int PAUSE_AUTONEG ;
 int PAUSE_RX ;
 int PAUSE_TX ;
 int PORT_LOCK (struct port_info*) ;
 int PORT_UNLOCK (struct port_info*) ;
 int SLEEP_OK ;
 int apply_link_config (struct port_info*) ;
 int begin_synchronized_op (struct adapter*,int *,int,char*) ;
 int end_synchronized_op (struct adapter*,int ) ;
 int fixup_link_config (struct port_info*) ;
 int ifmedia_baudrate (int ) ;

int
cxgbe_media_change(struct ifnet *ifp)
{
 struct vi_info *vi = ifp->if_softc;
 struct port_info *pi = vi->pi;
 struct ifmedia *ifm = &pi->media;
 struct link_config *lc = &pi->link_cfg;
 struct adapter *sc = pi->adapter;
 int rc;

 rc = begin_synchronized_op(sc, ((void*)0), SLEEP_OK | INTR_OK, "t4mec");
 if (rc != 0)
  return (rc);
 PORT_LOCK(pi);
 if (IFM_SUBTYPE(ifm->ifm_media) == IFM_AUTO) {

  if (!(lc->supported & FW_PORT_CAP32_ANEG)) {
   rc = ENOTSUP;
   goto done;
  }
  lc->requested_aneg = AUTONEG_ENABLE;
  lc->requested_speed = 0;
  lc->requested_fc |= PAUSE_AUTONEG;
 } else {
  lc->requested_aneg = AUTONEG_DISABLE;
  lc->requested_speed =
      ifmedia_baudrate(ifm->ifm_media) / 1000000;
  lc->requested_fc = 0;
  if (IFM_OPTIONS(ifm->ifm_media) & IFM_ETH_RXPAUSE)
   lc->requested_fc |= PAUSE_RX;
  if (IFM_OPTIONS(ifm->ifm_media) & IFM_ETH_TXPAUSE)
   lc->requested_fc |= PAUSE_TX;
 }
 if (pi->up_vis > 0) {
  fixup_link_config(pi);
  rc = apply_link_config(pi);
 }
done:
 PORT_UNLOCK(pi);
 end_synchronized_op(sc, 0);
 return (rc);
}
