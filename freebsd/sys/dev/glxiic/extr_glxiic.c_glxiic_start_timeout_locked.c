
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glxiic_softc {int timeout; int callout; } ;


 int GLXIIC_ASSERT_LOCKED (struct glxiic_softc*) ;
 int SBT_1MS ;
 int callout_reset_sbt (int *,int,int ,int ,struct glxiic_softc*,int ) ;
 int glxiic_timeout ;

__attribute__((used)) static void
glxiic_start_timeout_locked(struct glxiic_softc *sc)
{

 GLXIIC_ASSERT_LOCKED(sc);

 callout_reset_sbt(&sc->callout, SBT_1MS * sc->timeout, 0,
     glxiic_timeout, sc, 0);
}
