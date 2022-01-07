
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machfb_softc {int sc_va; } ;


 int V_DISPLAY_STAND_BY ;
 int machfb_blank_display (int *,int ) ;

__attribute__((used)) static void
machfb_shutdown_reset(void *v)
{
 struct machfb_softc *sc = v;

 machfb_blank_display(&sc->sc_va, V_DISPLAY_STAND_BY);
}
