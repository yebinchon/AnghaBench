
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int num_queues; struct bxe_fastpath* fp; } ;
struct bxe_fastpath {int rx_mtx; int tx_mtx; } ;


 int mtx_destroy (int *) ;
 scalar_t__ mtx_initialized (int *) ;

__attribute__((used)) static void
bxe_destroy_fp_mutexs(struct bxe_softc *sc)
{
    int i;
    struct bxe_fastpath *fp;

    for (i = 0; i < sc->num_queues; i++) {

        fp = &sc->fp[i];

        if (mtx_initialized(&fp->tx_mtx)) {
            mtx_destroy(&fp->tx_mtx);
        }

        if (mtx_initialized(&fp->rx_mtx)) {
            mtx_destroy(&fp->rx_mtx);
        }
    }
}
