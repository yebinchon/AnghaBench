
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bxe_softc {TYPE_1__* ilt; } ;
struct TYPE_2__ {int * lines; } ;


 int M_BXE_ILT ;
 int free (int *,int ) ;

__attribute__((used)) static void
bxe_free_ilt_lines_mem(struct bxe_softc *sc)
{
    if (sc->ilt->lines != ((void*)0)) {
        free(sc->ilt->lines, M_BXE_ILT);
        sc->ilt->lines = ((void*)0);
    }
}
