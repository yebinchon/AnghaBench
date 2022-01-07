
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nfe_softc {int nfe_flags; } ;
struct mii_data {int mii_media_active; } ;





 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int const IFM_SUBTYPE (int ) ;
 int NFE_LINKSPEED ;
 int NFE_LOCK_ASSERT (struct nfe_softc*) ;
 int NFE_MEDIA_1000T ;
 int NFE_MEDIA_100TX ;
 int NFE_MEDIA_10T ;
 int NFE_MEDIA_SET ;
 int NFE_MISC1 ;
 int NFE_MISC1_HDX ;
 int NFE_MISC1_MAGIC ;
 int NFE_MISC1_TX_PAUSE ;
 int NFE_PFF_RX_PAUSE ;
 int NFE_PHY_1000T ;
 int NFE_PHY_100TX ;
 int NFE_PHY_HDX ;
 int NFE_PHY_IFACE ;
 int NFE_R1_MAGIC_1000 ;
 int NFE_R1_MAGIC_10_100 ;
 int NFE_R1_MAGIC_DEFAULT ;
 int NFE_READ (struct nfe_softc*,int ) ;
 int NFE_RNDSEED ;
 int NFE_RXFILTER ;
 int NFE_SEED_1000T ;
 int NFE_SEED_100TX ;
 int NFE_SEED_10T ;
 int NFE_SEED_MASK ;
 int NFE_SETUP_R1 ;
 int NFE_TX_FLOW_CTRL ;
 int NFE_TX_PAUSE_FRAME ;
 int NFE_TX_PAUSE_FRAME_DISABLE ;
 int NFE_TX_PAUSE_FRAME_ENABLE ;
 int NFE_WRITE (struct nfe_softc*,int ,int) ;

__attribute__((used)) static void
nfe_mac_config(struct nfe_softc *sc, struct mii_data *mii)
{
 uint32_t link, misc, phy, seed;
 uint32_t val;

 NFE_LOCK_ASSERT(sc);

 phy = NFE_READ(sc, NFE_PHY_IFACE);
 phy &= ~(NFE_PHY_HDX | NFE_PHY_100TX | NFE_PHY_1000T);

 seed = NFE_READ(sc, NFE_RNDSEED);
 seed &= ~NFE_SEED_MASK;

 misc = NFE_MISC1_MAGIC;
 link = NFE_MEDIA_SET;

 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) == 0) {
  phy |= NFE_PHY_HDX;
  misc |= NFE_MISC1_HDX;
 }

 switch (IFM_SUBTYPE(mii->mii_media_active)) {
 case 130:
  link |= NFE_MEDIA_1000T;
  seed |= NFE_SEED_1000T;
  phy |= NFE_PHY_1000T;
  break;
 case 129:
  link |= NFE_MEDIA_100TX;
  seed |= NFE_SEED_100TX;
  phy |= NFE_PHY_100TX;
  break;
 case 128:
  link |= NFE_MEDIA_10T;
  seed |= NFE_SEED_10T;
  break;
 }

 if ((phy & 0x10000000) != 0) {
  if (IFM_SUBTYPE(mii->mii_media_active) == 130)
   val = NFE_R1_MAGIC_1000;
  else
   val = NFE_R1_MAGIC_10_100;
 } else
  val = NFE_R1_MAGIC_DEFAULT;
 NFE_WRITE(sc, NFE_SETUP_R1, val);

 NFE_WRITE(sc, NFE_RNDSEED, seed);

 NFE_WRITE(sc, NFE_PHY_IFACE, phy);
 NFE_WRITE(sc, NFE_MISC1, misc);
 NFE_WRITE(sc, NFE_LINKSPEED, link);

 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0) {

  val = NFE_READ(sc, NFE_RXFILTER);
  if ((IFM_OPTIONS(mii->mii_media_active) &
      IFM_ETH_RXPAUSE) != 0)
   val |= NFE_PFF_RX_PAUSE;
  else
   val &= ~NFE_PFF_RX_PAUSE;
  NFE_WRITE(sc, NFE_RXFILTER, val);
  if ((sc->nfe_flags & NFE_TX_FLOW_CTRL) != 0) {
   val = NFE_READ(sc, NFE_MISC1);
   if ((IFM_OPTIONS(mii->mii_media_active) &
       IFM_ETH_TXPAUSE) != 0) {
    NFE_WRITE(sc, NFE_TX_PAUSE_FRAME,
        NFE_TX_PAUSE_FRAME_ENABLE);
    val |= NFE_MISC1_TX_PAUSE;
   } else {
    val &= ~NFE_MISC1_TX_PAUSE;
    NFE_WRITE(sc, NFE_TX_PAUSE_FRAME,
        NFE_TX_PAUSE_FRAME_DISABLE);
   }
   NFE_WRITE(sc, NFE_MISC1, val);
  }
 } else {

  val = NFE_READ(sc, NFE_RXFILTER);
  val &= ~NFE_PFF_RX_PAUSE;
  NFE_WRITE(sc, NFE_RXFILTER, val);
  if ((sc->nfe_flags & NFE_TX_FLOW_CTRL) != 0) {
   NFE_WRITE(sc, NFE_TX_PAUSE_FRAME,
       NFE_TX_PAUSE_FRAME_DISABLE);
   val = NFE_READ(sc, NFE_MISC1);
   val &= ~NFE_MISC1_TX_PAUSE;
   NFE_WRITE(sc, NFE_MISC1, val);
  }
 }
}
