
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int * ilt; } ;


 int M_BXE_ILT ;
 int free (int *,int ) ;

__attribute__((used)) static void
bxe_free_ilt_mem(struct bxe_softc *sc)
{
    if (sc->ilt != ((void*)0)) {
        free(sc->ilt, M_BXE_ILT);
        sc->ilt = ((void*)0);
    }
}
