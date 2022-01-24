#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
struct bxe_softc {int num_queues; struct bxe_fastpath* fp; } ;
struct TYPE_2__ {scalar_t__ mbuf_alloc_rx; scalar_t__ mbuf_alloc_sge; scalar_t__ mbuf_alloc_tpa; scalar_t__ mbuf_alloc_tx; } ;
struct bxe_fastpath {TYPE_1__ eth_q_stats; int /*<<< orphan*/ * tx_br; int /*<<< orphan*/  tx_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_fastpath*) ; 
 struct mbuf* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct bxe_softc *sc)
{
    struct bxe_fastpath *fp;
    int i;

    for (i = 0; i < sc->num_queues; i++) {
        fp = &sc->fp[i];

#if __FreeBSD_version >= 901504
        if (fp->tx_br != NULL) {
            /* just in case bxe_mq_flush() wasn't called */
            if (mtx_initialized(&fp->tx_mtx)) {
                struct mbuf *m;

                BXE_FP_TX_LOCK(fp);
                while ((m = buf_ring_dequeue_sc(fp->tx_br)) != NULL)
                    m_freem(m);
                BXE_FP_TX_UNLOCK(fp);
            }
        }
#endif

        /* free all RX buffers */
        FUNC4(fp);
        FUNC6(fp);
        FUNC5(fp);

        if (fp->eth_q_stats.mbuf_alloc_rx != 0) {
            FUNC0(sc, "failed to claim all rx mbufs (%d left)\n",
                  fp->eth_q_stats.mbuf_alloc_rx);
        }

        if (fp->eth_q_stats.mbuf_alloc_sge != 0) {
            FUNC0(sc, "failed to claim all sge mbufs (%d left)\n",
                  fp->eth_q_stats.mbuf_alloc_sge);
        }

        if (fp->eth_q_stats.mbuf_alloc_tpa != 0) {
            FUNC0(sc, "failed to claim all sge mbufs (%d left)\n",
                  fp->eth_q_stats.mbuf_alloc_tpa);
        }

        if (fp->eth_q_stats.mbuf_alloc_tx != 0) {
            FUNC0(sc, "failed to release tx mbufs (%d left)\n",
                  fp->eth_q_stats.mbuf_alloc_tx);
        }

        /* XXX verify all mbufs were reclaimed */
    }
}