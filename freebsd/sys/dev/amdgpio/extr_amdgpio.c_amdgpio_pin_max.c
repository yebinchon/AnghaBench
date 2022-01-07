
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpio_softc {int sc_npins; } ;
typedef int device_t ;


 struct amdgpio_softc* device_get_softc (int ) ;
 int dprintf (char*,int,int) ;

__attribute__((used)) static int
amdgpio_pin_max(device_t dev, int *maxpin)
{
 struct amdgpio_softc *sc;

 sc = device_get_softc(dev);

 *maxpin = sc->sc_npins - 1;
 dprintf("npins %d maxpin %d\n", sc->sc_npins, *maxpin);

 return (0);
}
