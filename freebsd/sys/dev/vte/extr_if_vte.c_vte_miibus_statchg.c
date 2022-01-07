
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vte_softc {int vte_flags; int vte_int_rx_mod; int vte_int_tx_mod; struct ifnet* vte_ifp; int vte_miibus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
typedef int device_t ;


 int CSR_WRITE_2 (struct vte_softc*,int ,int) ;
 int IFF_DRV_RUNNING ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int const IFM_SUBTYPE (int ) ;
 int VTE_FLAG_LINK ;
 int VTE_IM_BUNDLE_SHIFT ;
 int VTE_IM_TIMER_SHIFT ;
 int VTE_MRICR ;
 int VTE_MTICR ;
 void* device_get_softc (int ) ;
 int vte_mac_config (struct vte_softc*) ;
 int vte_start_mac (struct vte_softc*) ;
 int vte_stop_mac (struct vte_softc*) ;

__attribute__((used)) static void
vte_miibus_statchg(device_t dev)
{
 struct vte_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;
 uint16_t val;

 sc = device_get_softc(dev);

 mii = device_get_softc(sc->vte_miibus);
 ifp = sc->vte_ifp;
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 sc->vte_flags &= ~VTE_FLAG_LINK;
 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
  case 129:
   sc->vte_flags |= VTE_FLAG_LINK;
   break;
  default:
   break;
  }
 }


 vte_stop_mac(sc);

 if ((sc->vte_flags & VTE_FLAG_LINK) != 0) {




  if (IFM_SUBTYPE(mii->mii_media_active) == 129)
   val = 18 << VTE_IM_TIMER_SHIFT;
  else
   val = 1 << VTE_IM_TIMER_SHIFT;
  val |= sc->vte_int_rx_mod << VTE_IM_BUNDLE_SHIFT;

  CSR_WRITE_2(sc, VTE_MRICR, val);

  if (IFM_SUBTYPE(mii->mii_media_active) == 129)
   val = 18 << VTE_IM_TIMER_SHIFT;
  else
   val = 1 << VTE_IM_TIMER_SHIFT;
  val |= sc->vte_int_tx_mod << VTE_IM_BUNDLE_SHIFT;

  CSR_WRITE_2(sc, VTE_MTICR, val);

  vte_mac_config(sc);
  vte_start_mac(sc);
 }
}
