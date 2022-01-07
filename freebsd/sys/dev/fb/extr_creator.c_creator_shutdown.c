
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct creator_softc {int sc_flags; } ;


 int CREATOR_CONSOLE ;
 int OF_interpret (char*,int ) ;
 int creator_cursor_enable (struct creator_softc*,int ) ;

__attribute__((used)) static void
creator_shutdown(void *xsc)
{
 struct creator_softc *sc = xsc;

 creator_cursor_enable(sc, 0);





 if (sc->sc_flags & CREATOR_CONSOLE) {
  OF_interpret("stdout @ is my-self 0 to column#", 0);
  OF_interpret("stdout @ is my-self #lines 1 - to line#", 0);
 }
}
