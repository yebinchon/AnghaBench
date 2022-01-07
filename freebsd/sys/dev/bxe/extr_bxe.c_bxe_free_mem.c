
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bxe_softc {TYPE_1__* context; } ;
struct TYPE_2__ {scalar_t__ size; int * vcxt; int vcxt_dma; } ;


 int ILT_MEMOP_FREE ;
 int L2_ILT_LINES (struct bxe_softc*) ;
 int bxe_dma_free (struct bxe_softc*,int *) ;
 int bxe_free_ilt_lines_mem (struct bxe_softc*) ;
 int ecore_ilt_mem_op (struct bxe_softc*,int ) ;

__attribute__((used)) static void
bxe_free_mem(struct bxe_softc *sc)
{
    int i;

    for (i = 0; i < L2_ILT_LINES(sc); i++) {
        bxe_dma_free(sc, &sc->context[i].vcxt_dma);
        sc->context[i].vcxt = ((void*)0);
        sc->context[i].size = 0;
    }

    ecore_ilt_mem_op(sc, ILT_MEMOP_FREE);

    bxe_free_ilt_lines_mem(sc);

}
