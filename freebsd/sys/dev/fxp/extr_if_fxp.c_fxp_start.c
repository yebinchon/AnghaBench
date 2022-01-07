
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxp_softc {int dummy; } ;
typedef int if_t ;


 int FXP_LOCK (struct fxp_softc*) ;
 int FXP_UNLOCK (struct fxp_softc*) ;
 int fxp_start_body (int ) ;
 struct fxp_softc* if_getsoftc (int ) ;

__attribute__((used)) static void
fxp_start(if_t ifp)
{
 struct fxp_softc *sc = if_getsoftc(ifp);

 FXP_LOCK(sc);
 fxp_start_body(ifp);
 FXP_UNLOCK(sc);
}
