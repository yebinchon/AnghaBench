
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_if_softc {int dummy; } ;


 int MSK_IF_LOCK (struct msk_if_softc*) ;
 int MSK_IF_UNLOCK (struct msk_if_softc*) ;
 int msk_init_locked (struct msk_if_softc*) ;

__attribute__((used)) static void
msk_init(void *xsc)
{
 struct msk_if_softc *sc_if = xsc;

 MSK_IF_LOCK(sc_if);
 msk_init_locked(sc_if);
 MSK_IF_UNLOCK(sc_if);
}
