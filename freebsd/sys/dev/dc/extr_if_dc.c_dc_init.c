
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_softc {int dummy; } ;


 int DC_LOCK (struct dc_softc*) ;
 int DC_UNLOCK (struct dc_softc*) ;
 int dc_init_locked (struct dc_softc*) ;

__attribute__((used)) static void
dc_init(void *xsc)
{
 struct dc_softc *sc = xsc;

 DC_LOCK(sc);
 dc_init_locked(sc);
 DC_UNLOCK(sc);
}
