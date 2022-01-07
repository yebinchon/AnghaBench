
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int * ifp; } ;
typedef int * if_t ;


 int if_setdrvflags (int *,int ) ;

__attribute__((used)) static void
bxe_tx_disable(struct bxe_softc* sc)
{
    if_t ifp = sc->ifp;


    if (ifp != ((void*)0)) {
        if_setdrvflags(ifp, 0);
    }
}
