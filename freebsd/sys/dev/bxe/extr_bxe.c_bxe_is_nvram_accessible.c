
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int ifp; } ;


 int FALSE ;
 int IFF_DRV_RUNNING ;
 int TRUE ;
 int if_getdrvflags (int ) ;

__attribute__((used)) static bool bxe_is_nvram_accessible(struct bxe_softc *sc)
{

    if ((if_getdrvflags(sc->ifp) & IFF_DRV_RUNNING) == 0)
        return FALSE;

    return TRUE;
}
