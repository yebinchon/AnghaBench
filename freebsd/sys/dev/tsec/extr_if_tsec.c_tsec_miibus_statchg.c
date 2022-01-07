
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tsec_softc {int tsec_link; struct mii_data* tsec_mii; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
typedef int device_t ;






 int IFM_ACTIVE ;
 int IFM_FDX ;
 int IFM_GMASK ;

 int IFM_SUBTYPE (int) ;
 int TSEC_ECNTRL_R100M ;
 int TSEC_MACCFG2_FULLDUPLEX ;
 int TSEC_MACCFG2_GMII ;
 int TSEC_MACCFG2_IF ;
 int TSEC_MACCFG2_MII ;
 int TSEC_READ (struct tsec_softc*,int ) ;
 int TSEC_REG_ECNTRL ;
 int TSEC_REG_ID2 ;
 int TSEC_REG_MACCFG2 ;
 int TSEC_WRITE (struct tsec_softc*,int ,int) ;
 struct tsec_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;

void
tsec_miibus_statchg(device_t dev)
{
 struct tsec_softc *sc;
 struct mii_data *mii;
 uint32_t ecntrl, id, tmp;
 int link;

 sc = device_get_softc(dev);
 mii = sc->tsec_mii;
 link = ((mii->mii_media_status & IFM_ACTIVE) ? 1 : 0);

 tmp = TSEC_READ(sc, TSEC_REG_MACCFG2) & ~TSEC_MACCFG2_IF;

 if ((mii->mii_media_active & IFM_GMASK) == IFM_FDX)
  tmp |= TSEC_MACCFG2_FULLDUPLEX;
 else
  tmp &= ~TSEC_MACCFG2_FULLDUPLEX;

 switch (IFM_SUBTYPE(mii->mii_media_active)) {
 case 131:
 case 132:
  tmp |= TSEC_MACCFG2_GMII;
  sc->tsec_link = link;
  break;
 case 130:
 case 129:
  tmp |= TSEC_MACCFG2_MII;
  sc->tsec_link = link;
  break;
 case 128:
  if (link)
   device_printf(dev, "No speed selected but link "
       "active!\n");
  sc->tsec_link = 0;
  return;
 default:
  sc->tsec_link = 0;
  device_printf(dev, "Unknown speed (%d), link %s!\n",
      IFM_SUBTYPE(mii->mii_media_active),
          ((link) ? "up" : "down"));
  return;
 }
 TSEC_WRITE(sc, TSEC_REG_MACCFG2, tmp);


 id = TSEC_READ(sc, TSEC_REG_ID2);
 if (id & 0xffff) {
  ecntrl = TSEC_READ(sc, TSEC_REG_ECNTRL) & ~TSEC_ECNTRL_R100M;
  ecntrl |= (tmp & TSEC_MACCFG2_MII) ? TSEC_ECNTRL_R100M : 0;
  TSEC_WRITE(sc, TSEC_REG_ECNTRL, ecntrl);
 }
}
