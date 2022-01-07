
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_kbd_softc {scalar_t__ buffers; int sc_mutex; scalar_t__* at_buffered_char; } ;
typedef int keyboard_t ;


 int FALSE ;
 int KBD_IS_ACTIVE (int *) ;
 int TRUE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
akbd_check(keyboard_t *kbd)
{
 struct adb_kbd_softc *sc;

 if (!KBD_IS_ACTIVE(kbd))
  return (FALSE);

 sc = (struct adb_kbd_softc *)(kbd);

 mtx_lock(&sc->sc_mutex);







  if (sc->buffers > 0) {
   mtx_unlock(&sc->sc_mutex);
   return (TRUE);
  }
 mtx_unlock(&sc->sc_mutex);

 return (FALSE);
}
