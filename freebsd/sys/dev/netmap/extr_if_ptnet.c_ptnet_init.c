
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptnet_softc {int dummy; } ;


 int PTNET_CORE_LOCK (struct ptnet_softc*) ;
 int PTNET_CORE_UNLOCK (struct ptnet_softc*) ;
 int ptnet_init_locked (struct ptnet_softc*) ;

__attribute__((used)) static void
ptnet_init(void *opaque)
{
 struct ptnet_softc *sc = opaque;

 PTNET_CORE_LOCK(sc);
 ptnet_init_locked(sc);
 PTNET_CORE_UNLOCK(sc);
}
