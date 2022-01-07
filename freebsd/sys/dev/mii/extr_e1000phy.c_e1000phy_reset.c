
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mii_softc {int mii_flags; int mii_mpd_model; } ;


 int E1000_BLINK_84MS ;
 int E1000_BLINK_RATE (int ) ;
 int E1000_CR ;
 int E1000_CR_RESET ;
 int E1000_EADR ;
 int E1000_ESCR ;
 int E1000_ESCR_TX_CLK_25 ;
 int E1000_IER ;
 int E1000_PULSE_170MS ;
 int E1000_PULSE_DUR (int ) ;
 int E1000_SCR ;
 int E1000_SCR_ASSERT_CRS_ON_TX ;
 int E1000_SCR_AUTO_MDIX ;
 int E1000_SCR_AUTO_X_MODE ;
 int E1000_SCR_EN_DETECT ;
 int E1000_SCR_EN_DETECT_MASK ;
 int E1000_SCR_FIB_SIGDET_POLARITY ;
 int E1000_SCR_LED_INIT (int) ;
 int E1000_SCR_LED_LOS (int) ;
 int E1000_SCR_LED_STAT0 (int) ;
 int E1000_SCR_LED_STAT1 (int) ;
 int E1000_SCR_LPNP ;
 int E1000_SCR_MODE_1000BX ;
 int E1000_SCR_MODE_MASK ;
 int E1000_SCR_POLARITY_REVERSAL ;
 int E1000_SCR_POWER_DOWN ;
 int E1000_SCR_RGMII_POWER_UP ;
 int E1000_SCR_SCRAMBLER_DISABLE ;
 int MIIF_HAVEFIBER ;
 int MIIF_PHYPRIV0 ;
 int PHY_READ (struct mii_softc*,int) ;
 int PHY_WRITE (struct mii_softc*,int,int) ;

__attribute__((used)) static void
e1000phy_reset(struct mii_softc *sc)
{
 uint16_t reg, page;

 reg = PHY_READ(sc, E1000_SCR);
 if ((sc->mii_flags & MIIF_HAVEFIBER) != 0) {
  reg &= ~E1000_SCR_AUTO_X_MODE;
  PHY_WRITE(sc, E1000_SCR, reg);
  if (sc->mii_mpd_model == 136) {

   page = PHY_READ(sc, E1000_EADR);
   PHY_WRITE(sc, E1000_EADR, 2);
   reg = PHY_READ(sc, E1000_SCR);
   reg &= ~E1000_SCR_MODE_MASK;
   reg |= E1000_SCR_MODE_1000BX;
   PHY_WRITE(sc, E1000_SCR, reg);
   if ((sc->mii_flags & MIIF_PHYPRIV0) != 0) {

    PHY_WRITE(sc, E1000_EADR, 1);
    reg = PHY_READ(sc, E1000_SCR);
    reg |= E1000_SCR_FIB_SIGDET_POLARITY;
    PHY_WRITE(sc, E1000_SCR, reg);
   }
   PHY_WRITE(sc, E1000_EADR, page);
  }
 } else {
  switch (sc->mii_mpd_model) {
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 128:

   reg &= ~E1000_SCR_EN_DETECT_MASK;
   reg |= E1000_SCR_AUTO_X_MODE;
   if (sc->mii_mpd_model == 135 ||
       sc->mii_mpd_model == 134)
    reg &= ~E1000_SCR_POWER_DOWN;
   reg |= E1000_SCR_ASSERT_CRS_ON_TX;
   break;
  case 129:
   reg |= (E1000_SCR_AUTO_X_MODE >> 1);
   reg |= E1000_SCR_ASSERT_CRS_ON_TX;
   break;
  case 130:
   reg |= E1000_SCR_AUTO_MDIX;
   reg &= ~(E1000_SCR_EN_DETECT |
       E1000_SCR_SCRAMBLER_DISABLE);
   reg |= E1000_SCR_LPNP;

   PHY_WRITE(sc, 0x1C, PHY_READ(sc, 0x1C) | 0x0001);
   break;
  default:
   reg &= ~E1000_SCR_AUTO_X_MODE;
   reg |= E1000_SCR_ASSERT_CRS_ON_TX;
   break;
  }
  if (sc->mii_mpd_model != 130) {

   reg &= ~E1000_SCR_POLARITY_REVERSAL;
  }
  PHY_WRITE(sc, E1000_SCR, reg);

  if (sc->mii_mpd_model == 135 ||
      sc->mii_mpd_model == 134 ||
      sc->mii_mpd_model == 132 ||
      sc->mii_mpd_model == 131) {
   PHY_WRITE(sc, E1000_EADR, 2);
   reg = PHY_READ(sc, E1000_SCR);
   reg |= E1000_SCR_RGMII_POWER_UP;
   PHY_WRITE(sc, E1000_SCR, reg);
   PHY_WRITE(sc, E1000_EADR, 0);
  }
 }

 switch (sc->mii_mpd_model) {
 case 129:
 case 136:
 case 133:
  break;
 case 135:
 case 134:
  page = PHY_READ(sc, E1000_EADR);

  PHY_WRITE(sc, E1000_EADR, 3);
  PHY_WRITE(sc, E1000_SCR,
      E1000_SCR_LED_LOS(1) |
      E1000_SCR_LED_INIT(8) |
      E1000_SCR_LED_STAT1(7) |
      E1000_SCR_LED_STAT0(7));

  PHY_WRITE(sc, E1000_IER, E1000_PULSE_DUR(E1000_PULSE_170MS) |
      E1000_BLINK_RATE(E1000_BLINK_84MS));
  PHY_WRITE(sc, E1000_EADR, page);
  break;
 case 130:

  PHY_WRITE(sc, 0x16, 0x0B << 8 | 0x05 << 4 | 0x04);

  PHY_WRITE(sc, 0x1D, 17);
  PHY_WRITE(sc, 0x1E, 0x3F60);
  break;
 default:

  reg = PHY_READ(sc, E1000_ESCR);
  reg |= E1000_ESCR_TX_CLK_25;
  PHY_WRITE(sc, E1000_ESCR, reg);
  break;
 }


 reg = PHY_READ(sc, E1000_CR);
 reg |= E1000_CR_RESET;
 PHY_WRITE(sc, E1000_CR, reg);
}
