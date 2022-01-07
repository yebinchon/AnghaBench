
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct alc_softc {int alc_rev; } ;


 int ALC_MISC ;
 int ALC_MISC2 ;
 int ALC_MISC3 ;
 scalar_t__ AR816X_REV (int ) ;
 scalar_t__ AR816X_REV_A1 ;
 scalar_t__ AR816X_REV_B0 ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int DELAY (int) ;
 int MISC2_CALB_START ;
 int MISC3_25M_BY_SW ;
 int MISC3_25M_NOTO_INTNL ;
 int MISC_INTNLOSC_OPEN ;
 int MISC_ISO_ENB ;
 int MISC_PSW_OCP_DEFAULT ;
 int MISC_PSW_OCP_MASK ;
 int MISC_PSW_OCP_SHIFT ;

__attribute__((used)) static void
alc_osc_reset(struct alc_softc *sc)
{
 uint32_t reg;

 reg = CSR_READ_4(sc, ALC_MISC3);
 reg &= ~MISC3_25M_BY_SW;
 reg |= MISC3_25M_NOTO_INTNL;
 CSR_WRITE_4(sc, ALC_MISC3, reg);

 reg = CSR_READ_4(sc, ALC_MISC);
 if (AR816X_REV(sc->alc_rev) >= AR816X_REV_B0) {




  reg &= ~MISC_PSW_OCP_MASK;
  reg |= (MISC_PSW_OCP_DEFAULT << MISC_PSW_OCP_SHIFT);
  reg &= ~MISC_INTNLOSC_OPEN;
  CSR_WRITE_4(sc, ALC_MISC, reg);
  CSR_WRITE_4(sc, ALC_MISC, reg | MISC_INTNLOSC_OPEN);
  reg = CSR_READ_4(sc, ALC_MISC2);
  reg &= ~MISC2_CALB_START;
  CSR_WRITE_4(sc, ALC_MISC2, reg);
  CSR_WRITE_4(sc, ALC_MISC2, reg | MISC2_CALB_START);

 } else {
  reg &= ~MISC_INTNLOSC_OPEN;

  if (AR816X_REV(sc->alc_rev) <= AR816X_REV_A1)
   reg &= ~MISC_ISO_ENB;
  CSR_WRITE_4(sc, ALC_MISC, reg | MISC_INTNLOSC_OPEN);
  CSR_WRITE_4(sc, ALC_MISC, reg);
 }

 DELAY(20);
}
