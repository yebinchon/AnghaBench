
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunkbd_softc {int sc_flags; scalar_t__ sc_composed_char; } ;
typedef int keyboard_t ;


 int FALSE ;
 int KBD_IS_ACTIVE (int *) ;
 int KPCOMPOSE ;
 int TRUE ;
 int sunkbd_check (int *) ;

__attribute__((used)) static int
sunkbd_check_char(keyboard_t *kbd)
{
 struct sunkbd_softc *sc;

 if (!KBD_IS_ACTIVE(kbd))
  return (FALSE);

 sc = (struct sunkbd_softc *)kbd;
 if (!(sc->sc_flags & KPCOMPOSE) && (sc->sc_composed_char > 0))
  return (TRUE);

 return (sunkbd_check(kbd));
}
