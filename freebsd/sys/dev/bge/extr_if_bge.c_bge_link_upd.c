
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct bge_softc {scalar_t__ bge_asicrev; scalar_t__ bge_chipid; int bge_link; int bge_flags; int bge_mi_mode; int bge_dev; int bge_miibus; int bge_ifp; int bge_phy_addr; scalar_t__ bge_link_evt; } ;


 scalar_t__ BGE_ASICREV_BCM5700 ;
 scalar_t__ BGE_ASICREV_BCM5704 ;
 scalar_t__ BGE_CHIPID_BCM5700_B2 ;
 int BGE_CLRBIT (struct bge_softc*,int ,int ) ;
 int BGE_EVTENB_MI_INTERRUPT ;
 int BGE_FLAG_TBI ;
 int BGE_LOCK_ASSERT (struct bge_softc*) ;
 int BGE_MACMODE_TBI_SEND_CFGS ;
 int BGE_MACSTAT_CFG_CHANGED ;
 int BGE_MACSTAT_LINK_CHANGED ;
 int BGE_MACSTAT_MI_COMPLETE ;
 int BGE_MACSTAT_MI_INTERRUPT ;
 int BGE_MACSTAT_SYNC_CHANGED ;
 int BGE_MACSTAT_TBI_PCS_SYNCHED ;
 int BGE_MAC_EVT_ENB ;
 int BGE_MAC_MODE ;
 int BGE_MAC_STS ;
 int BGE_MIMODE_AUTOPOLL ;
 int BGE_MISTS_LINK ;
 int BGE_MI_STS ;
 int BRGPHY_INTRS ;
 int BRGPHY_MII_IMR ;
 int BRGPHY_MII_ISR ;
 int CSR_READ_4 (struct bge_softc*,int ) ;
 int CSR_WRITE_4 (struct bge_softc*,int ,int) ;
 int DELAY (int) ;
 int IFM_ACTIVE ;
 scalar_t__ IFM_NONE ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int bge_miibus_readreg (int ,int ,int ) ;
 int bge_miibus_statchg (int ) ;
 int bge_miibus_writereg (int ,int ,int ,int ) ;
 scalar_t__ bootverbose ;
 struct mii_data* device_get_softc (int ) ;
 int if_link_state_change (int ,int ) ;
 int if_printf (int ,char*) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
bge_link_upd(struct bge_softc *sc)
{
 struct mii_data *mii;
 uint32_t link, status;

 BGE_LOCK_ASSERT(sc);


 sc->bge_link_evt = 0;
 if (sc->bge_asicrev == BGE_ASICREV_BCM5700 &&
     sc->bge_chipid != BGE_CHIPID_BCM5700_B2) {
  status = CSR_READ_4(sc, BGE_MAC_STS);
  if (status & BGE_MACSTAT_MI_INTERRUPT) {
   mii = device_get_softc(sc->bge_miibus);
   mii_pollstat(mii);
   if (!sc->bge_link &&
       mii->mii_media_status & IFM_ACTIVE &&
       IFM_SUBTYPE(mii->mii_media_active) != IFM_NONE) {
    sc->bge_link++;
    if (bootverbose)
     if_printf(sc->bge_ifp, "link UP\n");
   } else if (sc->bge_link &&
       (!(mii->mii_media_status & IFM_ACTIVE) ||
       IFM_SUBTYPE(mii->mii_media_active) == IFM_NONE)) {
    sc->bge_link = 0;
    if (bootverbose)
     if_printf(sc->bge_ifp, "link DOWN\n");
   }


   CSR_WRITE_4(sc, BGE_MAC_EVT_ENB,
       BGE_EVTENB_MI_INTERRUPT);
   bge_miibus_readreg(sc->bge_dev, sc->bge_phy_addr,
       BRGPHY_MII_ISR);
   bge_miibus_writereg(sc->bge_dev, sc->bge_phy_addr,
       BRGPHY_MII_IMR, BRGPHY_INTRS);
  }
  return;
 }

 if (sc->bge_flags & BGE_FLAG_TBI) {
  status = CSR_READ_4(sc, BGE_MAC_STS);
  if (status & BGE_MACSTAT_TBI_PCS_SYNCHED) {
   if (!sc->bge_link) {
    sc->bge_link++;
    if (sc->bge_asicrev == BGE_ASICREV_BCM5704) {
     BGE_CLRBIT(sc, BGE_MAC_MODE,
         BGE_MACMODE_TBI_SEND_CFGS);
     DELAY(40);
    }
    CSR_WRITE_4(sc, BGE_MAC_STS, 0xFFFFFFFF);
    if (bootverbose)
     if_printf(sc->bge_ifp, "link UP\n");
    if_link_state_change(sc->bge_ifp,
        LINK_STATE_UP);
   }
  } else if (sc->bge_link) {
   sc->bge_link = 0;
   if (bootverbose)
    if_printf(sc->bge_ifp, "link DOWN\n");
   if_link_state_change(sc->bge_ifp, LINK_STATE_DOWN);
  }
 } else if ((sc->bge_mi_mode & BGE_MIMODE_AUTOPOLL) != 0) {





  link = (CSR_READ_4(sc, BGE_MI_STS) & BGE_MISTS_LINK) ? 1 : 0;

  if (link != sc->bge_link ||
      sc->bge_asicrev == BGE_ASICREV_BCM5700) {
   mii = device_get_softc(sc->bge_miibus);
   mii_pollstat(mii);
   if (!sc->bge_link &&
       mii->mii_media_status & IFM_ACTIVE &&
       IFM_SUBTYPE(mii->mii_media_active) != IFM_NONE) {
    sc->bge_link++;
    if (bootverbose)
     if_printf(sc->bge_ifp, "link UP\n");
   } else if (sc->bge_link &&
       (!(mii->mii_media_status & IFM_ACTIVE) ||
       IFM_SUBTYPE(mii->mii_media_active) == IFM_NONE)) {
    sc->bge_link = 0;
    if (bootverbose)
     if_printf(sc->bge_ifp, "link DOWN\n");
   }
  }
 } else {




  mii = device_get_softc(sc->bge_miibus);
  mii_pollstat(mii);
  bge_miibus_statchg(sc->bge_dev);
 }


 CSR_WRITE_4(sc, BGE_MAC_STS, BGE_MACSTAT_SYNC_CHANGED |
     BGE_MACSTAT_CFG_CHANGED | BGE_MACSTAT_MI_COMPLETE |
     BGE_MACSTAT_LINK_CHANGED);
}
