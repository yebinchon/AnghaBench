
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int num_queues; int unit; struct bxe_fastpath* fp; } ;
struct bxe_fastpath {int rx_mtx_name; int rx_mtx; int tx_mtx_name; int tx_mtx; } ;


 int MTX_DEF ;
 int mtx_init (int *,int ,int *,int ) ;
 int snprintf (int ,int,char*,int,int) ;

__attribute__((used)) static void
bxe_init_fp_mutexs(struct bxe_softc *sc)
{
    int i;
    struct bxe_fastpath *fp;

    for (i = 0; i < sc->num_queues; i++) {

        fp = &sc->fp[i];

        snprintf(fp->tx_mtx_name, sizeof(fp->tx_mtx_name),
            "bxe%d_fp%d_tx_lock", sc->unit, i);
        mtx_init(&fp->tx_mtx, fp->tx_mtx_name, ((void*)0), MTX_DEF);

        snprintf(fp->rx_mtx_name, sizeof(fp->rx_mtx_name),
            "bxe%d_fp%d_rx_lock", sc->unit, i);
        mtx_init(&fp->rx_mtx, fp->rx_mtx_name, ((void*)0), MTX_DEF);
    }
}
