
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hifn_softc {int sc_flags; int sc_dev; } ;


 int DELAY (int) ;
 int HIFN_0_PUCTRL ;
 int HIFN_0_PUCTRL2 ;
 int HIFN_IS_7956 ;
 int HIFN_PUCTRL_RESET ;
 int READ_REG_0 (struct hifn_softc*,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
hifn_puc_wait(struct hifn_softc *sc)
{
 int i;
 int reg = HIFN_0_PUCTRL;

 if (sc->sc_flags & HIFN_IS_7956) {
  reg = HIFN_0_PUCTRL2;
 }

 for (i = 5000; i > 0; i--) {
  DELAY(1);
  if (!(READ_REG_0(sc, reg) & HIFN_PUCTRL_RESET))
   break;
 }
 if (!i)
  device_printf(sc->sc_dev, "proc unit did not reset\n");
}
