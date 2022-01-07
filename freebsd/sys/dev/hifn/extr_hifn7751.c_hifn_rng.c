
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hifn_softc {int sc_flags; int sc_rnghz; int sc_rngto; int sc_rndtest; int (* sc_harvest ) (int ,int*,int) ;scalar_t__ sc_rngfirst; int sc_dev; } ;
typedef int num ;


 int HIFN_1_7811_RNGDAT ;
 int HIFN_1_7811_RNGSTS ;
 int HIFN_1_RNG_DATA ;
 int HIFN_7811_RNGSTS_RDY ;
 int HIFN_7811_RNGSTS_UFL ;
 int HIFN_IS_7811 ;
 int READ_REG_1 (struct hifn_softc*,int ) ;
 int callout_reset (int *,int ,void (*) (void*),struct hifn_softc*) ;
 int device_printf (int ,char*) ;
 int stub1 (int ,int*,int) ;
 int stub2 (int ,int*,int) ;

__attribute__((used)) static void
hifn_rng(void *vsc)
{

 struct hifn_softc *sc = vsc;
 u_int32_t sts, num[2];
 int i;

 if (sc->sc_flags & HIFN_IS_7811) {

  for (i = 0; i < 5; i++) {
   sts = READ_REG_1(sc, HIFN_1_7811_RNGSTS);
   if (sts & HIFN_7811_RNGSTS_UFL) {
    device_printf(sc->sc_dev,
           "RNG underflow: disabling\n");
    return;
   }
   if ((sts & HIFN_7811_RNGSTS_RDY) == 0)
    break;





   num[0] = READ_REG_1(sc, HIFN_1_7811_RNGDAT);
   num[1] = READ_REG_1(sc, HIFN_1_7811_RNGDAT);

   if (sc->sc_rngfirst)
    sc->sc_rngfirst = 0;
   else
    (*sc->sc_harvest)(sc->sc_rndtest,
     num, sizeof (num));
  }
 } else {
  num[0] = READ_REG_1(sc, HIFN_1_RNG_DATA);


  if (sc->sc_rngfirst)
   sc->sc_rngfirst = 0;
  else
   (*sc->sc_harvest)(sc->sc_rndtest,
    num, sizeof (num[0]));
 }

 callout_reset(&sc->sc_rngto, sc->sc_rnghz, hifn_rng, sc);

}
