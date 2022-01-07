
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machfb_softc {int sc_flags; } ;


 int MACHFB_CONSOLE ;
 int OF_interpret (char*,int ) ;
 int machfb_cursor_enable (struct machfb_softc*,int ) ;

__attribute__((used)) static void
machfb_shutdown_final(void *v)
{
 struct machfb_softc *sc = v;

 machfb_cursor_enable(sc, 0);





 if (sc->sc_flags & MACHFB_CONSOLE) {
  OF_interpret("stdout @ is my-self 0 to column#", 0);
  OF_interpret("stdout @ is my-self #lines 1 - to line#", 0);
 }
}
