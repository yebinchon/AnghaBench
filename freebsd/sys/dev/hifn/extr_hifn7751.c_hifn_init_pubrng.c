
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct hifn_softc {int sc_flags; int sc_rngfirst; int sc_rnghz; int sc_dmaier; TYPE_1__* sc_pkdev; int sc_rngto; int sc_dev; void* sc_harvest; scalar_t__ sc_rndtest; } ;
struct TYPE_2__ {struct hifn_softc* si_drv1; } ;


 int DELAY (int) ;
 int GID_WHEEL ;
 int HIFN_1_7811_RNGCFG ;
 int HIFN_1_7811_RNGENA ;
 int HIFN_1_DMA_IER ;
 int HIFN_1_PUB_IEN ;
 int HIFN_1_PUB_RESET ;
 int HIFN_1_RNG_CONFIG ;
 int HIFN_7811_RNGCFG_DEFL ;
 int HIFN_7811_RNGENA_ENA ;
 int HIFN_DMAIER_PUBDONE ;
 int HIFN_HAS_PUBLIC ;
 int HIFN_HAS_RNG ;
 int HIFN_IS_7811 ;
 int HIFN_PUBIEN_DONE ;
 int HIFN_PUBRST_RESET ;
 int HIFN_RNGCFG_ENA ;
 int READ_REG_1 (struct hifn_softc*,int ) ;
 int UID_ROOT ;
 int WRITE_REG_1 (struct hifn_softc*,int ,int) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,struct hifn_softc*) ;
 void* default_harvest ;
 int device_printf (int ,char*) ;
 int hifn_rng ;
 int hz ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*) ;
 scalar_t__ rndtest_attach (int ) ;
 void* rndtest_harvest ;
 int vulcanpk_cdevsw ;

__attribute__((used)) static int
hifn_init_pubrng(struct hifn_softc *sc)
{
 u_int32_t r;
 int i;
 sc->sc_harvest = default_harvest;

 if ((sc->sc_flags & HIFN_IS_7811) == 0) {

  WRITE_REG_1(sc, HIFN_1_PUB_RESET,
      READ_REG_1(sc, HIFN_1_PUB_RESET) | HIFN_PUBRST_RESET);

  for (i = 0; i < 100; i++) {
   DELAY(1000);
   if ((READ_REG_1(sc, HIFN_1_PUB_RESET) &
       HIFN_PUBRST_RESET) == 0)
    break;
  }

  if (i == 100) {
   device_printf(sc->sc_dev, "public key init failed\n");
   return (1);
  }
 }


 if (sc->sc_flags & HIFN_HAS_RNG) {
  if (sc->sc_flags & HIFN_IS_7811) {
   r = READ_REG_1(sc, HIFN_1_7811_RNGENA);
   if (r & HIFN_7811_RNGENA_ENA) {
    r &= ~HIFN_7811_RNGENA_ENA;
    WRITE_REG_1(sc, HIFN_1_7811_RNGENA, r);
   }
   WRITE_REG_1(sc, HIFN_1_7811_RNGCFG,
       HIFN_7811_RNGCFG_DEFL);
   r |= HIFN_7811_RNGENA_ENA;
   WRITE_REG_1(sc, HIFN_1_7811_RNGENA, r);
  } else
   WRITE_REG_1(sc, HIFN_1_RNG_CONFIG,
       READ_REG_1(sc, HIFN_1_RNG_CONFIG) |
       HIFN_RNGCFG_ENA);

  sc->sc_rngfirst = 1;
  if (hz >= 100)
   sc->sc_rnghz = hz / 100;
  else
   sc->sc_rnghz = 1;
  callout_init(&sc->sc_rngto, 1);
  callout_reset(&sc->sc_rngto, sc->sc_rnghz, hifn_rng, sc);
 }


 if (sc->sc_flags & HIFN_HAS_PUBLIC) {
  WRITE_REG_1(sc, HIFN_1_PUB_IEN, HIFN_PUBIEN_DONE);
  sc->sc_dmaier |= HIFN_DMAIER_PUBDONE;
  WRITE_REG_1(sc, HIFN_1_DMA_IER, sc->sc_dmaier);






 }

 return (0);
}
