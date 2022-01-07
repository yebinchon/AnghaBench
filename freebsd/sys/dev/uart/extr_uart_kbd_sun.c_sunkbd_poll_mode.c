
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunkbd_softc {int sc_polling; } ;
typedef int keyboard_t ;



__attribute__((used)) static int
sunkbd_poll_mode(keyboard_t *kbd, int on)
{
 struct sunkbd_softc *sc;

 sc = (struct sunkbd_softc *)kbd;
 if (on)
  sc->sc_polling++;
 else
  sc->sc_polling--;
 return (0);
}
