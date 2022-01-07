
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic_softc {scalar_t__ internal_codec; } ;


 int AICFR ;
 int AICFR_AUSEL ;
 int AICFR_BCKD ;
 int AICFR_ENB ;
 int AICFR_ICDC ;
 int AICFR_RFTH (int) ;
 int AICFR_RST ;
 int AICFR_SYNCD ;
 int AICFR_TFTH (int) ;
 int READ4 (struct aic_softc*,int ) ;
 int WRITE4 (struct aic_softc*,int ,int) ;

__attribute__((used)) static int
aic_configure(struct aic_softc *sc)
{
 int reg;

 WRITE4(sc, AICFR, AICFR_RST);


 reg = 0;
 if (sc->internal_codec) {
  reg |= (AICFR_ICDC);
 } else {
  reg |= (AICFR_SYNCD | AICFR_BCKD);
 }
 reg |= (AICFR_AUSEL);
 reg |= (AICFR_TFTH(8));
 reg |= (AICFR_RFTH(7));
 WRITE4(sc, AICFR, reg);

 reg = READ4(sc, AICFR);
 reg |= (AICFR_ENB);
 WRITE4(sc, AICFR, reg);

 return (0);
}
