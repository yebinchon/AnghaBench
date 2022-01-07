
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intsmb_softc {int dummy; } ;


 int INTSMB_LOCK (struct intsmb_softc*) ;
 int INTSMB_UNLOCK (struct intsmb_softc*) ;
 int intsmb_intr (struct intsmb_softc*) ;
 int intsmb_slvintr (struct intsmb_softc*) ;

__attribute__((used)) static void
intsmb_rawintr(void *arg)
{
 struct intsmb_softc *sc = arg;

 INTSMB_LOCK(sc);
 intsmb_intr(sc);
 intsmb_slvintr(sc);
 INTSMB_UNLOCK(sc);
}
