
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smsc_softc {int sc_flags; int sc_mac_csr; int sc_ue; int sc_mtx; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
typedef int device_t ;


 int IFF_DRV_RUNNING ;



 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int IFM_SUBTYPE (int ) ;
 int SMSC_AFC_CFG ;
 int SMSC_FLAG_LINK ;
 int SMSC_FLOW ;
 int SMSC_LOCK (struct smsc_softc*) ;
 int SMSC_MAC_CSR ;
 int SMSC_MAC_CSR_FDPX ;
 int SMSC_MAC_CSR_RCVOWN ;
 int SMSC_UNLOCK (struct smsc_softc*) ;
 struct smsc_softc* device_get_softc (int ) ;
 int mtx_owned (int *) ;
 int smsc_dbg_printf (struct smsc_softc*,char*) ;
 int smsc_read_reg (struct smsc_softc*,int ,int*) ;
 int smsc_warn_printf (struct smsc_softc*,char*,int) ;
 int smsc_write_reg (struct smsc_softc*,int ,int) ;
 struct ifnet* uether_getifp (int *) ;
 struct mii_data* uether_getmii (int *) ;

__attribute__((used)) static void
smsc_miibus_statchg(device_t dev)
{
 struct smsc_softc *sc = device_get_softc(dev);
 struct mii_data *mii = uether_getmii(&sc->sc_ue);
 struct ifnet *ifp;
 int locked;
 int err;
 uint32_t flow;
 uint32_t afc_cfg;

 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  SMSC_LOCK(sc);

 ifp = uether_getifp(&sc->sc_ue);
 if (mii == ((void*)0) || ifp == ((void*)0) ||
     (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  goto done;


 sc->sc_flags &= ~SMSC_FLAG_LINK;
 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
   case 128:
   case 129:
    sc->sc_flags |= SMSC_FLAG_LINK;
    break;
   case 130:

    break;
   default:
    break;
  }
 }


 if ((sc->sc_flags & SMSC_FLAG_LINK) == 0) {
  smsc_dbg_printf(sc, "link flag not set\n");
  goto done;
 }

 err = smsc_read_reg(sc, SMSC_AFC_CFG, &afc_cfg);
 if (err) {
  smsc_warn_printf(sc, "failed to read initial AFC_CFG, error %d\n", err);
  goto done;
 }


 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0) {
  smsc_dbg_printf(sc, "full duplex operation\n");
  sc->sc_mac_csr &= ~SMSC_MAC_CSR_RCVOWN;
  sc->sc_mac_csr |= SMSC_MAC_CSR_FDPX;

  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_ETH_RXPAUSE) != 0)
   flow = 0xffff0002;
  else
   flow = 0;

  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_ETH_TXPAUSE) != 0)
   afc_cfg |= 0xf;
  else
   afc_cfg &= ~0xf;

 } else {
  smsc_dbg_printf(sc, "half duplex operation\n");
  sc->sc_mac_csr &= ~SMSC_MAC_CSR_FDPX;
  sc->sc_mac_csr |= SMSC_MAC_CSR_RCVOWN;

  flow = 0;
  afc_cfg |= 0xf;
 }

 err = smsc_write_reg(sc, SMSC_MAC_CSR, sc->sc_mac_csr);
 err += smsc_write_reg(sc, SMSC_FLOW, flow);
 err += smsc_write_reg(sc, SMSC_AFC_CFG, afc_cfg);
 if (err)
  smsc_warn_printf(sc, "media change failed, error %d\n", err);

done:
 if (!locked)
  SMSC_UNLOCK(sc);
}
