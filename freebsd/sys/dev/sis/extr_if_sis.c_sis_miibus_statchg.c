
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sis_softc {int sis_flags; scalar_t__ sis_type; scalar_t__ sis_srr; int sis_dev; struct ifnet* sis_ifp; int sis_miibus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
typedef int device_t ;


 int CSR_READ_4 (struct sis_softc*,int ) ;
 int CSR_WRITE_4 (struct sis_softc*,int ,int) ;
 int DELAY (int) ;
 int IFF_DRV_RUNNING ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int const IFM_SUBTYPE (int ) ;
 int NS_PHY_DSPCFG ;
 int NS_PHY_PAGE ;
 int NS_PHY_TDATA ;
 scalar_t__ NS_SRR_16A ;
 int SIS_CLRBIT (struct sis_softc*,int ,int) ;
 int SIS_CSR ;
 int SIS_CSR_RX_DISABLE ;
 int SIS_CSR_RX_ENABLE ;
 int SIS_CSR_TX_DISABLE ;
 int SIS_CSR_TX_ENABLE ;
 int SIS_FLAG_LINK ;
 int SIS_LOCK_ASSERT (struct sis_softc*) ;
 int SIS_RXCFG_RX_TXPKTS ;
 int SIS_RX_CFG ;
 int SIS_SETBIT (struct sis_softc*,int ,int) ;
 int SIS_TXCFG_10 ;
 int SIS_TXCFG_100 ;
 int SIS_TXCFG_IGN_CARR ;
 int SIS_TXCFG_IGN_HBEAT ;
 int SIS_TXCFG_MPII03D ;
 int SIS_TX_CFG ;
 scalar_t__ SIS_TYPE_83815 ;
 void* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
sis_miibus_statchg(device_t dev)
{
 struct sis_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;
 uint32_t reg;

 sc = device_get_softc(dev);
 SIS_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->sis_miibus);
 ifp = sc->sis_ifp;
 if (mii == ((void*)0) || ifp == ((void*)0) ||
     (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 sc->sis_flags &= ~SIS_FLAG_LINK;
 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
   CSR_WRITE_4(sc, SIS_TX_CFG, SIS_TXCFG_10);
   sc->sis_flags |= SIS_FLAG_LINK;
   break;
  case 129:
   CSR_WRITE_4(sc, SIS_TX_CFG, SIS_TXCFG_100);
   sc->sis_flags |= SIS_FLAG_LINK;
   break;
  default:
   break;
  }
 }

 if ((sc->sis_flags & SIS_FLAG_LINK) == 0) {






  return;
 }


 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0) {
  SIS_SETBIT(sc, SIS_TX_CFG,
      (SIS_TXCFG_IGN_HBEAT | SIS_TXCFG_IGN_CARR));
  SIS_SETBIT(sc, SIS_RX_CFG, SIS_RXCFG_RX_TXPKTS);
 } else {
  SIS_CLRBIT(sc, SIS_TX_CFG,
      (SIS_TXCFG_IGN_HBEAT | SIS_TXCFG_IGN_CARR));
  SIS_CLRBIT(sc, SIS_RX_CFG, SIS_RXCFG_RX_TXPKTS);
 }

 if (sc->sis_type == SIS_TYPE_83815 && sc->sis_srr >= NS_SRR_16A) {




  SIS_SETBIT(sc, SIS_TX_CFG, SIS_TXCFG_MPII03D);
 }

 if (sc->sis_type == SIS_TYPE_83815 && sc->sis_srr < NS_SRR_16A &&
     IFM_SUBTYPE(mii->mii_media_active) == 129) {



  CSR_WRITE_4(sc, NS_PHY_PAGE, 0x0001);
  reg = CSR_READ_4(sc, NS_PHY_DSPCFG) & 0xfff;
  CSR_WRITE_4(sc, NS_PHY_DSPCFG, reg | 0x1000);
  DELAY(100);
  reg = CSR_READ_4(sc, NS_PHY_TDATA) & 0xff;
  if ((reg & 0x0080) == 0 || (reg > 0xd8 && reg <= 0xff)) {
   device_printf(sc->sis_dev,
       "Applying short cable fix (reg=%x)\n", reg);
   CSR_WRITE_4(sc, NS_PHY_TDATA, 0x00e8);
   SIS_SETBIT(sc, NS_PHY_DSPCFG, 0x20);
  }
  CSR_WRITE_4(sc, NS_PHY_PAGE, 0);
 }

 SIS_CLRBIT(sc, SIS_CSR, SIS_CSR_TX_DISABLE | SIS_CSR_RX_DISABLE);
 SIS_SETBIT(sc, SIS_CSR, SIS_CSR_TX_ENABLE | SIS_CSR_RX_ENABLE);
}
