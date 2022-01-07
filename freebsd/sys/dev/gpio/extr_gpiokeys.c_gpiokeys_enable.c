
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct gpiokeys_softc {int dummy; } ;
struct TYPE_4__ {struct gpiokeys_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int GPIOKEYS_LOCK (struct gpiokeys_softc*) ;
 int GPIOKEYS_UNLOCK (struct gpiokeys_softc*) ;
 int KBD_ACTIVATE (TYPE_1__*) ;

__attribute__((used)) static int
gpiokeys_enable(keyboard_t *kbd)
{
 struct gpiokeys_softc *sc;

 sc = kbd->kb_data;
 GPIOKEYS_LOCK(sc);
 KBD_ACTIVATE(kbd);
 GPIOKEYS_UNLOCK(sc);

 return (0);
}
