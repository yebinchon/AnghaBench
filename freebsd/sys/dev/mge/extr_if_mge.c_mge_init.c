
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mge_softc {int dummy; } ;


 int MGE_GLOBAL_LOCK (struct mge_softc*) ;
 int MGE_GLOBAL_UNLOCK (struct mge_softc*) ;
 int mge_init_locked (void*) ;

__attribute__((used)) static void
mge_init(void *arg)
{
 struct mge_softc *sc;

 sc = arg;
 MGE_GLOBAL_LOCK(sc);

 mge_init_locked(arg);

 MGE_GLOBAL_UNLOCK(sc);
}
