
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arge_softc {int dummy; } ;


 int ARGE_LOCK (struct arge_softc*) ;
 int ARGE_UNLOCK (struct arge_softc*) ;
 int arge_update_link_locked (struct arge_softc*) ;

__attribute__((used)) static void
arge_link_task(void *arg, int pending)
{
 struct arge_softc *sc;
 sc = (struct arge_softc *)arg;

 ARGE_LOCK(sc);
 arge_update_link_locked(sc);
 ARGE_UNLOCK(sc);
}
