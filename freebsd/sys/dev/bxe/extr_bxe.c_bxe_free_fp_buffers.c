
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct bxe_softc {int num_queues; struct bxe_fastpath* fp; } ;
struct TYPE_2__ {scalar_t__ mbuf_alloc_rx; scalar_t__ mbuf_alloc_sge; scalar_t__ mbuf_alloc_tpa; scalar_t__ mbuf_alloc_tx; } ;
struct bxe_fastpath {TYPE_1__ eth_q_stats; int * tx_br; int tx_mtx; } ;


 int BLOGE (struct bxe_softc*,char*,scalar_t__) ;
 int BXE_FP_TX_LOCK (struct bxe_fastpath*) ;
 int BXE_FP_TX_UNLOCK (struct bxe_fastpath*) ;
 struct mbuf* buf_ring_dequeue_sc (int *) ;
 int bxe_free_rx_bd_chain (struct bxe_fastpath*) ;
 int bxe_free_sge_chain (struct bxe_fastpath*) ;
 int bxe_free_tpa_pool (struct bxe_fastpath*) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ mtx_initialized (int *) ;

__attribute__((used)) static void
bxe_free_fp_buffers(struct bxe_softc *sc)
{
    struct bxe_fastpath *fp;
    int i;

    for (i = 0; i < sc->num_queues; i++) {
        fp = &sc->fp[i];
        bxe_free_rx_bd_chain(fp);
        bxe_free_tpa_pool(fp);
        bxe_free_sge_chain(fp);

        if (fp->eth_q_stats.mbuf_alloc_rx != 0) {
            BLOGE(sc, "failed to claim all rx mbufs (%d left)\n",
                  fp->eth_q_stats.mbuf_alloc_rx);
        }

        if (fp->eth_q_stats.mbuf_alloc_sge != 0) {
            BLOGE(sc, "failed to claim all sge mbufs (%d left)\n",
                  fp->eth_q_stats.mbuf_alloc_sge);
        }

        if (fp->eth_q_stats.mbuf_alloc_tpa != 0) {
            BLOGE(sc, "failed to claim all sge mbufs (%d left)\n",
                  fp->eth_q_stats.mbuf_alloc_tpa);
        }

        if (fp->eth_q_stats.mbuf_alloc_tx != 0) {
            BLOGE(sc, "failed to release tx mbufs (%d left)\n",
                  fp->eth_q_stats.mbuf_alloc_tx);
        }


    }
}
