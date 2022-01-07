
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arge_softc {int dummy; } ;


 int ARGE_LOCK (struct arge_softc*) ;
 int ARGE_UNLOCK (struct arge_softc*) ;
 int arge_init_locked (struct arge_softc*) ;

__attribute__((used)) static void
arge_init(void *xsc)
{
 struct arge_softc *sc = xsc;

 ARGE_LOCK(sc);
 arge_init_locked(sc);
 ARGE_UNLOCK(sc);
}
