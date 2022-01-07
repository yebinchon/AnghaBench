
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_softc {int dummy; } ;


 int SIS_LOCK (struct sis_softc*) ;
 int SIS_UNLOCK (struct sis_softc*) ;
 int sis_initl (struct sis_softc*) ;

__attribute__((used)) static void
sis_init(void *xsc)
{
 struct sis_softc *sc = xsc;

 SIS_LOCK(sc);
 sis_initl(sc);
 SIS_UNLOCK(sc);
}
