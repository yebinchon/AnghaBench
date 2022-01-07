
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ukbd_softc {int sc_flags; scalar_t__ sc_inputs; scalar_t__* sc_buffered_char; } ;
struct TYPE_4__ {struct ukbd_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int KBD_IS_ACTIVE (TYPE_1__*) ;
 int UKBD_FLAG_POLLING ;
 int UKBD_LOCK_ASSERT () ;
 int ukbd_do_poll (struct ukbd_softc*,int ) ;

__attribute__((used)) static int
ukbd_check(keyboard_t *kbd)
{
 struct ukbd_softc *sc = kbd->kb_data;

 UKBD_LOCK_ASSERT();

 if (!KBD_IS_ACTIVE(kbd))
  return (0);

 if (sc->sc_flags & UKBD_FLAG_POLLING)
  ukbd_do_poll(sc, 0);






 if (sc->sc_inputs > 0) {
  return (1);
 }
 return (0);
}
