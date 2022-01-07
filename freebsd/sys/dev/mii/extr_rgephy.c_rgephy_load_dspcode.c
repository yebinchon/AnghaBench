
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {scalar_t__ mii_mpd_model; scalar_t__ mii_mpd_rev; } ;


 int DELAY (int) ;
 scalar_t__ MII_MODEL_REALTEK_RTL8251 ;
 int PHY_CLRBIT (struct mii_softc*,int,int) ;
 int PHY_READ (struct mii_softc*,int) ;
 int PHY_SETBIT (struct mii_softc*,int,int) ;
 int PHY_WRITE (struct mii_softc*,int,int) ;
 scalar_t__ RGEPHY_8211B ;

__attribute__((used)) static void
rgephy_load_dspcode(struct mii_softc *sc)
{
 int val;

 if (sc->mii_mpd_model == MII_MODEL_REALTEK_RTL8251 ||
     sc->mii_mpd_rev >= RGEPHY_8211B)
  return;

 PHY_WRITE(sc, 31, 0x0001);
 PHY_WRITE(sc, 21, 0x1000);
 PHY_WRITE(sc, 24, 0x65C7);
 PHY_CLRBIT(sc, 4, 0x0800);
 val = PHY_READ(sc, 4) & 0xFFF;
 PHY_WRITE(sc, 4, val);
 PHY_WRITE(sc, 3, 0x00A1);
 PHY_WRITE(sc, 2, 0x0008);
 PHY_WRITE(sc, 1, 0x1020);
 PHY_WRITE(sc, 0, 0x1000);
 PHY_SETBIT(sc, 4, 0x0800);
 PHY_CLRBIT(sc, 4, 0x0800);
 val = (PHY_READ(sc, 4) & 0xFFF) | 0x7000;
 PHY_WRITE(sc, 4, val);
 PHY_WRITE(sc, 3, 0xFF41);
 PHY_WRITE(sc, 2, 0xDE60);
 PHY_WRITE(sc, 1, 0x0140);
 PHY_WRITE(sc, 0, 0x0077);
 val = (PHY_READ(sc, 4) & 0xFFF) | 0xA000;
 PHY_WRITE(sc, 4, val);
 PHY_WRITE(sc, 3, 0xDF01);
 PHY_WRITE(sc, 2, 0xDF20);
 PHY_WRITE(sc, 1, 0xFF95);
 PHY_WRITE(sc, 0, 0xFA00);
 val = (PHY_READ(sc, 4) & 0xFFF) | 0xB000;
 PHY_WRITE(sc, 4, val);
 PHY_WRITE(sc, 3, 0xFF41);
 PHY_WRITE(sc, 2, 0xDE20);
 PHY_WRITE(sc, 1, 0x0140);
 PHY_WRITE(sc, 0, 0x00BB);
 val = (PHY_READ(sc, 4) & 0xFFF) | 0xF000;
 PHY_WRITE(sc, 4, val);
 PHY_WRITE(sc, 3, 0xDF01);
 PHY_WRITE(sc, 2, 0xDF20);
 PHY_WRITE(sc, 1, 0xFF95);
 PHY_WRITE(sc, 0, 0xBF00);
 PHY_SETBIT(sc, 4, 0x0800);
 PHY_CLRBIT(sc, 4, 0x0800);
 PHY_WRITE(sc, 31, 0x0000);

 DELAY(40);
}
