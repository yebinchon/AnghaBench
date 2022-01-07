
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {int dummy; } ;


 int BGE_LOCK (struct bge_softc*) ;
 int BGE_UNLOCK (struct bge_softc*) ;
 int bge_init_locked (struct bge_softc*) ;

__attribute__((used)) static void
bge_init(void *xsc)
{
 struct bge_softc *sc = xsc;

 BGE_LOCK(sc);
 bge_init_locked(sc);
 BGE_UNLOCK(sc);
}
