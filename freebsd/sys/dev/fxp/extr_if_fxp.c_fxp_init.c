
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxp_softc {int dummy; } ;


 int FXP_LOCK (struct fxp_softc*) ;
 int FXP_UNLOCK (struct fxp_softc*) ;
 int fxp_init_body (struct fxp_softc*,int) ;

__attribute__((used)) static void
fxp_init(void *xsc)
{
 struct fxp_softc *sc = xsc;

 FXP_LOCK(sc);
 fxp_init_body(sc, 1);
 FXP_UNLOCK(sc);
}
