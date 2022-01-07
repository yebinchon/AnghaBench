
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ffec_softc {int link_is_up; int phy_conn_type; struct mii_data* mii_softc; } ;
typedef int device_t ;


 int FEC_ECR_REG ;
 int FEC_ECR_SPEED ;
 int FEC_RCR_DRT ;
 int FEC_RCR_FCE ;
 int FEC_RCR_MII_MODE ;
 int FEC_RCR_REG ;
 int FEC_RCR_RGMII_EN ;
 int FEC_RCR_RMII_10T ;
 int FEC_RCR_RMII_MODE ;
 int FEC_TCR_FDEN ;
 int FEC_TCR_REG ;
 int FFEC_ASSERT_LOCKED (struct ffec_softc*) ;




 int IFM_ACTIVE ;
 int IFM_FDX ;
 int IFM_FLOW ;

 int IFM_OPTIONS (int ) ;
 int IFM_SUBTYPE (int ) ;





 int RD4 (struct ffec_softc*,int ) ;
 int WR4 (struct ffec_softc*,int ,int) ;
 struct ffec_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
ffec_miibus_statchg(device_t dev)
{
 struct ffec_softc *sc;
 struct mii_data *mii;
 uint32_t ecr, rcr, tcr;






 sc = device_get_softc(dev);

 FFEC_ASSERT_LOCKED(sc);

 mii = sc->mii_softc;

 if (mii->mii_media_status & IFM_ACTIVE)
  sc->link_is_up = 1;
 else
  sc->link_is_up = 0;

 ecr = RD4(sc, FEC_ECR_REG) & ~FEC_ECR_SPEED;
 rcr = RD4(sc, FEC_RCR_REG) & ~(FEC_RCR_RMII_10T | FEC_RCR_RMII_MODE |
     FEC_RCR_RGMII_EN | FEC_RCR_DRT | FEC_RCR_FCE);
 tcr = RD4(sc, FEC_TCR_REG) & ~FEC_TCR_FDEN;

 rcr |= FEC_RCR_MII_MODE;
 switch (sc->phy_conn_type) {
 case 128:
  rcr |= FEC_RCR_RMII_MODE;
  break;
 case 132:
 case 131:
 case 130:
 case 129:
  rcr |= FEC_RCR_RGMII_EN;
  break;
 default:
  break;
 }

 switch (IFM_SUBTYPE(mii->mii_media_active)) {
 case 136:
 case 137:
  ecr |= FEC_ECR_SPEED;
  break;
 case 135:

  break;
 case 134:
  rcr |= FEC_RCR_RMII_10T;
  break;
 case 133:
  sc->link_is_up = 0;
  return;
 default:
  sc->link_is_up = 0;
  device_printf(dev, "Unsupported media %u\n",
      IFM_SUBTYPE(mii->mii_media_active));
  return;
 }

 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0)
  tcr |= FEC_TCR_FDEN;
 else
  rcr |= FEC_RCR_DRT;

 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FLOW) != 0)
  rcr |= FEC_RCR_FCE;

 WR4(sc, FEC_RCR_REG, rcr);
 WR4(sc, FEC_TCR_REG, tcr);
 WR4(sc, FEC_ECR_REG, ecr);
}
