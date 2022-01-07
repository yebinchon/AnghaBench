
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ukbd_softc {scalar_t__ sc_composed_char; int sc_flags; } ;
struct TYPE_5__ {struct ukbd_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int KBD_IS_ACTIVE (TYPE_1__*) ;
 int UKBD_FLAG_COMPOSE ;
 int UKBD_LOCK_ASSERT () ;
 int ukbd_check (TYPE_1__*) ;

__attribute__((used)) static int
ukbd_check_char_locked(keyboard_t *kbd)
{
 struct ukbd_softc *sc = kbd->kb_data;

 UKBD_LOCK_ASSERT();

 if (!KBD_IS_ACTIVE(kbd))
  return (0);

 if ((sc->sc_composed_char > 0) &&
     (!(sc->sc_flags & UKBD_FLAG_COMPOSE))) {
  return (1);
 }
 return (ukbd_check(kbd));
}
