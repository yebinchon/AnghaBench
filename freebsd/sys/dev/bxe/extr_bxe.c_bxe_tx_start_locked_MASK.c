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
typedef  scalar_t__ uint16_t ;
struct mbuf {int dummy; } ;
struct bxe_softc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_queue_xoff; int /*<<< orphan*/  mbuf_alloc_tx; int /*<<< orphan*/  tx_encap_failures; } ;
struct bxe_fastpath {int /*<<< orphan*/  watchdog_timer; TYPE_1__ eth_q_stats; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_fastpath*) ; 
 scalar_t__ BXE_TX_CLEANUP_THRESHOLD ; 
 int /*<<< orphan*/  BXE_TX_TIMEOUT ; 
 int IFF_DRV_OACTIVE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bxe_softc*,struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_fastpath*,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,struct bxe_fastpath*) ; 
 struct mbuf* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct bxe_softc *sc,
                    if_t ifp,
                    struct bxe_fastpath *fp)
{
    struct mbuf *m = NULL;
    int tx_count = 0;
    uint16_t tx_bd_avail;

    FUNC0(fp);

    /* keep adding entries while there are frames to send */
    while (!FUNC8(ifp)) {

        /*
         * check for any frames to send
         * dequeue can still be NULL even if queue is not empty
         */
        m = FUNC5(ifp);
        if (FUNC1(m == NULL)) {
            break;
        }

        /* the mbuf now belongs to us */
        fp->eth_q_stats.mbuf_alloc_tx++;

        /*
         * Put the frame into the transmit ring. If we don't have room,
         * place the mbuf back at the head of the TX queue, set the
         * OACTIVE flag, and wait for the NIC to drain the chain.
         */
        if (FUNC1(FUNC3(fp, &m))) {
            fp->eth_q_stats.tx_encap_failures++;
            if (m != NULL) {
                /* mark the TX queue as full and return the frame */
                FUNC10(ifp, IFF_DRV_OACTIVE, 0);
		FUNC9(ifp, m);
                fp->eth_q_stats.mbuf_alloc_tx--;
                fp->eth_q_stats.tx_queue_xoff++;
            }

            /* stop looking for more work */
            break;
        }

        /* the frame was enqueued successfully */
        tx_count++;

        /* send a copy of the frame to any BPF listeners. */
        FUNC6(ifp, m);

        tx_bd_avail = FUNC2(sc, fp);

        /* handle any completions if we're running low */
        if (tx_bd_avail < BXE_TX_CLEANUP_THRESHOLD) {
            /* bxe_txeof will set IFF_DRV_OACTIVE appropriately */
            FUNC4(sc, fp);
            if (FUNC7(ifp) & IFF_DRV_OACTIVE) {
                break;
            }
        }
    }

    /* all TX packets were dequeued and/or the tx ring is full */
    if (tx_count > 0) {
        /* reset the TX watchdog timeout timer */
        fp->watchdog_timer = BXE_TX_TIMEOUT;
    }
}