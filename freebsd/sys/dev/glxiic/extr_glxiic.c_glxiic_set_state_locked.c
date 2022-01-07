
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glxiic_softc {scalar_t__ timeout; scalar_t__ state; int callout; } ;
typedef scalar_t__ glxiic_state_t ;


 int GLXIIC_ASSERT_LOCKED (struct glxiic_softc*) ;
 scalar_t__ GLXIIC_STATE_IDLE ;
 int callout_stop (int *) ;
 int glxiic_start_timeout_locked (struct glxiic_softc*) ;

__attribute__((used)) static void
glxiic_set_state_locked(struct glxiic_softc *sc, glxiic_state_t state)
{

 GLXIIC_ASSERT_LOCKED(sc);

 if (state == GLXIIC_STATE_IDLE)
  callout_stop(&sc->callout);
 else if (sc->timeout > 0)
  glxiic_start_timeout_locked(sc);

 sc->state = state;
}
