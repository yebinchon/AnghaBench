
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mii_data {int mii_media_active; } ;
struct aue_softc {int sc_flags; int sc_mtx; } ;
typedef int device_t ;


 int AUE_CLRBIT (struct aue_softc*,int ,int) ;
 int AUE_CTL0 ;
 int AUE_CTL0_RX_ENB ;
 int AUE_CTL0_TX_ENB ;
 int AUE_CTL1 ;
 int AUE_CTL1_DUPLEX ;
 int AUE_CTL1_SPEEDSEL ;
 int AUE_FLAG_LSYS ;
 int AUE_LOCK (struct aue_softc*) ;
 int AUE_SETBIT (struct aue_softc*,int ,int) ;
 int AUE_UNLOCK (struct aue_softc*) ;
 struct mii_data* GET_MII (struct aue_softc*) ;
 scalar_t__ IFM_100_TX ;
 int IFM_FDX ;
 int IFM_GMASK ;
 scalar_t__ IFM_SUBTYPE (int) ;
 int aue_miibus_readreg (int ,int ,int) ;
 int aue_miibus_writereg (int ,int ,int,int) ;
 struct aue_softc* device_get_softc (int ) ;
 int mtx_owned (int *) ;

__attribute__((used)) static void
aue_miibus_statchg(device_t dev)
{
 struct aue_softc *sc = device_get_softc(dev);
 struct mii_data *mii = GET_MII(sc);
 int locked;

 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  AUE_LOCK(sc);

 AUE_CLRBIT(sc, AUE_CTL0, AUE_CTL0_RX_ENB | AUE_CTL0_TX_ENB);
 if (IFM_SUBTYPE(mii->mii_media_active) == IFM_100_TX)
  AUE_SETBIT(sc, AUE_CTL1, AUE_CTL1_SPEEDSEL);
 else
  AUE_CLRBIT(sc, AUE_CTL1, AUE_CTL1_SPEEDSEL);

 if ((mii->mii_media_active & IFM_GMASK) == IFM_FDX)
  AUE_SETBIT(sc, AUE_CTL1, AUE_CTL1_DUPLEX);
 else
  AUE_CLRBIT(sc, AUE_CTL1, AUE_CTL1_DUPLEX);

 AUE_SETBIT(sc, AUE_CTL0, AUE_CTL0_RX_ENB | AUE_CTL0_TX_ENB);






 if (sc->sc_flags & AUE_FLAG_LSYS) {
  uint16_t auxmode;

  auxmode = aue_miibus_readreg(dev, 0, 0x1b);
  aue_miibus_writereg(dev, 0, 0x1b, auxmode | 0x04);
 }
 if (!locked)
  AUE_UNLOCK(sc);
}
