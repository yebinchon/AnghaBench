
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct g_audio_softc {int sc_noise_rem; } ;
typedef int int32_t ;



__attribute__((used)) static int32_t
g_noise(struct g_audio_softc *sc)
{
 uint32_t temp;
 const uint32_t prime = 0xFFFF1D;

 if (sc->sc_noise_rem & 1) {
  sc->sc_noise_rem += prime;
 }
 sc->sc_noise_rem /= 2;

 temp = sc->sc_noise_rem;



 temp ^= 0x800000;
 if (temp & 0x800000) {
  temp |= (-0x800000);
 }
 return temp;
}
