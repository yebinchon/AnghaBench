
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct truephy_dsp {int index; int data; } ;
struct mii_softc {scalar_t__ mii_mpd_model; TYPE_1__* mii_pdata; } ;
struct TYPE_2__ {int mii_ifp; } ;


 int BMCR_AUTOEN ;
 int BMCR_PDOWN ;
 int BMCR_S1000 ;
 int MII_BMCR ;
 scalar_t__ MII_MODEL_AGERE_ET1011 ;
 int MII_PHYIDR1 ;
 int MII_PHYIDR2 ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int TRUEPHY_CONF ;
 int TRUEPHY_CONF_TXFIFO_24 ;
 int TRUEPHY_CONF_TXFIFO_MASK ;
 int TRUEPHY_CTRL ;
 int TRUEPHY_CTRL_DIAG ;
 int TRUEPHY_CTRL_RSV0 ;
 int TRUEPHY_CTRL_RSV1 ;
 int TRUEPHY_DATA ;
 scalar_t__ TRUEPHY_FRAMELEN (int) ;
 int TRUEPHY_INDEX ;
 int TRUEPHY_INDEX_MAGIC ;
 int if_getmtu (int ) ;
 int mii_phy_reset (struct mii_softc*) ;
 int nitems (struct truephy_dsp*) ;
 struct truephy_dsp* truephy_dspcode ;

__attribute__((used)) static void
truephy_reset(struct mii_softc *sc)
{
 int i;

 if (sc->mii_mpd_model == MII_MODEL_AGERE_ET1011) {
  mii_phy_reset(sc);
  return;
 }

 for (i = 0; i < 2; ++i) {
  PHY_READ(sc, MII_PHYIDR1);
  PHY_READ(sc, MII_PHYIDR2);

  PHY_READ(sc, TRUEPHY_CTRL);
  PHY_WRITE(sc, TRUEPHY_CTRL,
     TRUEPHY_CTRL_DIAG | TRUEPHY_CTRL_RSV1);

  PHY_WRITE(sc, TRUEPHY_INDEX, TRUEPHY_INDEX_MAGIC);
  PHY_READ(sc, TRUEPHY_DATA);

  PHY_WRITE(sc, TRUEPHY_CTRL, TRUEPHY_CTRL_RSV1);
 }

 PHY_READ(sc, MII_BMCR);
 PHY_READ(sc, TRUEPHY_CTRL);
 PHY_WRITE(sc, MII_BMCR, BMCR_AUTOEN | BMCR_PDOWN | BMCR_S1000);
 PHY_WRITE(sc, TRUEPHY_CTRL,
    TRUEPHY_CTRL_DIAG | TRUEPHY_CTRL_RSV1 | TRUEPHY_CTRL_RSV0);

 for (i = 0; i < nitems(truephy_dspcode); ++i) {
  const struct truephy_dsp *dsp = &truephy_dspcode[i];

  PHY_WRITE(sc, TRUEPHY_INDEX, dsp->index);
  PHY_WRITE(sc, TRUEPHY_DATA, dsp->data);

  PHY_WRITE(sc, TRUEPHY_INDEX, dsp->index);
  PHY_READ(sc, TRUEPHY_DATA);
 }

 PHY_READ(sc, MII_BMCR);
 PHY_READ(sc, TRUEPHY_CTRL);
 PHY_WRITE(sc, MII_BMCR, BMCR_AUTOEN | BMCR_S1000);
 PHY_WRITE(sc, TRUEPHY_CTRL, TRUEPHY_CTRL_RSV1);

 mii_phy_reset(sc);

 if (TRUEPHY_FRAMELEN((if_getmtu(sc->mii_pdata->mii_ifp)) > 2048)) {
  int conf;

  conf = PHY_READ(sc, TRUEPHY_CONF);
  conf &= ~TRUEPHY_CONF_TXFIFO_MASK;
  conf |= TRUEPHY_CONF_TXFIFO_24;
  PHY_WRITE(sc, TRUEPHY_CONF, conf);
 }
}
