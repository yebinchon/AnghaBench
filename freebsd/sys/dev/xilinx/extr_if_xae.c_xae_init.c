
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xae_softc {int dummy; } ;


 int XAE_LOCK (struct xae_softc*) ;
 int XAE_UNLOCK (struct xae_softc*) ;
 int xae_init_locked (struct xae_softc*) ;

__attribute__((used)) static void
xae_init(void *arg)
{
 struct xae_softc *sc;

 sc = arg;

 XAE_LOCK(sc);
 xae_init_locked(sc);
 XAE_UNLOCK(sc);
}
