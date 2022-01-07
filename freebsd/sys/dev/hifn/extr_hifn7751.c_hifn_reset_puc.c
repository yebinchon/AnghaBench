
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hifn_softc {int sc_flags; } ;


 int HIFN_0_PUCTRL ;
 int HIFN_0_PUCTRL2 ;
 int HIFN_IS_7956 ;
 int HIFN_PUCTRL_DMAENA ;
 int WRITE_REG_0 (struct hifn_softc*,int,int ) ;
 int hifn_puc_wait (struct hifn_softc*) ;

__attribute__((used)) static void
hifn_reset_puc(struct hifn_softc *sc)
{

 int reg = HIFN_0_PUCTRL;

 if (sc->sc_flags & HIFN_IS_7956) {
  reg = HIFN_0_PUCTRL2;
 }
 WRITE_REG_0(sc, reg, HIFN_PUCTRL_DMAENA);

 hifn_puc_wait(sc);
}
