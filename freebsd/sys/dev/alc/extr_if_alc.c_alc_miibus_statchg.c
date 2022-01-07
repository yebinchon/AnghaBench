
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
struct alc_softc {int alc_flags; struct ifnet* alc_ifp; int alc_miibus; } ;
typedef int device_t ;


 int ALC_FLAG_FASTETHER ;
 int ALC_FLAG_LINK ;
 int ALC_MAC_CFG ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int IFF_DRV_RUNNING ;



 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_SUBTYPE (int ) ;
 int MAC_CFG_RX_ENB ;
 int MAC_CFG_TX_ENB ;
 int alc_aspm (struct alc_softc*,int ,int) ;
 int alc_dsp_fixup (struct alc_softc*,int) ;
 int alc_mac_config (struct alc_softc*) ;
 int alc_start_queue (struct alc_softc*) ;
 int alc_stop_mac (struct alc_softc*) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static void
alc_miibus_statchg(device_t dev)
{
 struct alc_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;
 uint32_t reg;

 sc = device_get_softc(dev);

 mii = device_get_softc(sc->alc_miibus);
 ifp = sc->alc_ifp;
 if (mii == ((void*)0) || ifp == ((void*)0) ||
     (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 sc->alc_flags &= ~ALC_FLAG_LINK;
 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
  case 129:
   sc->alc_flags |= ALC_FLAG_LINK;
   break;
  case 130:
   if ((sc->alc_flags & ALC_FLAG_FASTETHER) == 0)
    sc->alc_flags |= ALC_FLAG_LINK;
   break;
  default:
   break;
  }
 }

 alc_stop_mac(sc);


 if ((sc->alc_flags & ALC_FLAG_LINK) != 0) {
  alc_start_queue(sc);
  alc_mac_config(sc);

  reg = CSR_READ_4(sc, ALC_MAC_CFG);
  reg |= MAC_CFG_TX_ENB | MAC_CFG_RX_ENB;
  CSR_WRITE_4(sc, ALC_MAC_CFG, reg);
 }
 alc_aspm(sc, 0, IFM_SUBTYPE(mii->mii_media_active));
 alc_dsp_fixup(sc, IFM_SUBTYPE(mii->mii_media_active));
}
