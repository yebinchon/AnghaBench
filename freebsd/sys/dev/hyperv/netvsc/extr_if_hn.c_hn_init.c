
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int dummy; } ;


 int HN_LOCK (struct hn_softc*) ;
 int HN_UNLOCK (struct hn_softc*) ;
 int hn_init_locked (struct hn_softc*) ;

__attribute__((used)) static void
hn_init(void *xsc)
{
 struct hn_softc *sc = xsc;

 HN_LOCK(sc);
 hn_init_locked(sc);
 HN_UNLOCK(sc);
}
