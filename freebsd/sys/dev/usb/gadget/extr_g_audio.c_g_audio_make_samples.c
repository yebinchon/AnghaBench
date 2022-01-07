
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_audio_softc {scalar_t__ sc_state; scalar_t__ sc_pattern_len; int* sc_pattern; } ;
typedef int int16_t ;


 int g_noise (struct g_audio_softc*) ;

__attribute__((used)) static void
g_audio_make_samples(struct g_audio_softc *sc, int16_t *ptr, int samples)
{
 int i;
 int j;

 for (i = 0; i != samples; i++) {

  j = g_noise(sc);

  if ((sc->sc_state < 0) || (sc->sc_state >= sc->sc_pattern_len))
   sc->sc_state = 0;

  if (sc->sc_pattern_len != 0) {
   j = (j * sc->sc_pattern[sc->sc_state]) >> 16;
   sc->sc_state++;
  }
  *ptr++ = j / 256;
  *ptr++ = j / 256;
 }
}
