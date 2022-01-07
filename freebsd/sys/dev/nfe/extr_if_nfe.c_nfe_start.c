
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_softc {int dummy; } ;
typedef int if_t ;


 int NFE_LOCK (struct nfe_softc*) ;
 int NFE_UNLOCK (struct nfe_softc*) ;
 struct nfe_softc* if_getsoftc (int ) ;
 int nfe_start_locked (int ) ;

__attribute__((used)) static void
nfe_start(if_t ifp)
{
 struct nfe_softc *sc = if_getsoftc(ifp);

 NFE_LOCK(sc);
 nfe_start_locked(ifp);
 NFE_UNLOCK(sc);
}
