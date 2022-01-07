
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {int dummy; } ;
typedef int if_t ;


 int BGE_LOCK (struct bge_softc*) ;
 int BGE_UNLOCK (struct bge_softc*) ;
 int bge_ifmedia_upd_locked (int ) ;
 struct bge_softc* if_getsoftc (int ) ;

__attribute__((used)) static int
bge_ifmedia_upd(if_t ifp)
{
 struct bge_softc *sc = if_getsoftc(ifp);
 int res;

 BGE_LOCK(sc);
 res = bge_ifmedia_upd_locked(ifp);
 BGE_UNLOCK(sc);

 return (res);
}
