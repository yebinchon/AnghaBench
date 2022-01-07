
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xl_softc {int dummy; } ;


 int XL_LOCK (struct xl_softc*) ;
 int XL_UNLOCK (struct xl_softc*) ;
 int xl_init_locked (struct xl_softc*) ;

__attribute__((used)) static void
xl_init(void *xsc)
{
 struct xl_softc *sc = xsc;

 XL_LOCK(sc);
 xl_init_locked(sc);
 XL_UNLOCK(sc);
}
