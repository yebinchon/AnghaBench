
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgem_softc {int dummy; } ;
typedef int if_t ;


 int CGEM_LOCK (struct cgem_softc*) ;
 int CGEM_UNLOCK (struct cgem_softc*) ;
 int cgem_start_locked (int ) ;
 scalar_t__ if_getsoftc (int ) ;

__attribute__((used)) static void
cgem_start(if_t ifp)
{
 struct cgem_softc *sc = (struct cgem_softc *) if_getsoftc(ifp);

 CGEM_LOCK(sc);
 cgem_start_locked(ifp);
 CGEM_UNLOCK(sc);
}
