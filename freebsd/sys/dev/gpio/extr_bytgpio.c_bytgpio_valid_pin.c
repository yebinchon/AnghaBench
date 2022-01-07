
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bytgpio_softc {int sc_npins; int * sc_mem_res; } ;


 int EINVAL ;

__attribute__((used)) static int
bytgpio_valid_pin(struct bytgpio_softc *sc, int pin)
{

 if (pin >= sc->sc_npins || sc->sc_mem_res == ((void*)0))
  return (EINVAL);

 return (0);
}
