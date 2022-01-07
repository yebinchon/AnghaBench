
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint32_t ;
struct glxsb_softc {int sc_rnghz; int sc_rngco; int sc_sr; } ;


 int RANDOM_PURE_GLXSB ;
 int SB_RANDOM_NUM ;
 int SB_RANDOM_NUM_STATUS ;
 int SB_RNS_TRNG_VALID ;
 int bus_read_4 (int ,int ) ;
 int callout_reset (int *,int ,void (*) (void*),struct glxsb_softc*) ;
 int random_harvest_queue (int*,int,int ) ;

__attribute__((used)) static void
glxsb_rnd(void *v)
{
 struct glxsb_softc *sc = v;
 uint32_t status, value;

 status = bus_read_4(sc->sc_sr, SB_RANDOM_NUM_STATUS);
 if (status & SB_RNS_TRNG_VALID) {
  value = bus_read_4(sc->sc_sr, SB_RANDOM_NUM);


  random_harvest_queue(&value, sizeof(value), RANDOM_PURE_GLXSB);
 }

 callout_reset(&sc->sc_rngco, sc->sc_rnghz, glxsb_rnd, sc);
}
