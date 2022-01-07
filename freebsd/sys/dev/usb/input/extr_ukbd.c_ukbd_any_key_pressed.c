
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_2__ {size_t* keycode; } ;
struct ukbd_softc {TYPE_1__ sc_odata; } ;


 size_t UKBD_NKEYCODE ;

__attribute__((used)) static uint8_t
ukbd_any_key_pressed(struct ukbd_softc *sc)
{
 uint8_t i;
 uint8_t j;

 for (j = i = 0; i < UKBD_NKEYCODE; i++)
  j |= sc->sc_odata.keycode[i];

 return (j ? 1 : 0);
}
