#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bxe_softc {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  mbuf_alloc_tpa; } ;
struct bxe_fastpath {TYPE_3__ eth_q_stats; TYPE_2__* rx_tpa_info; int /*<<< orphan*/ * rx_mbuf_tag; struct bxe_softc* sc; } ;
struct TYPE_4__ {int /*<<< orphan*/ * m; int /*<<< orphan*/ * m_map; } ;
struct TYPE_5__ {TYPE_1__ bd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct bxe_fastpath *fp)
{
    struct bxe_softc *sc;
    int i, max_agg_queues;

    sc = fp->sc;

    if (fp->rx_mbuf_tag == NULL) {
        return;
    }

    max_agg_queues = FUNC0(sc);

    /* release all mbufs and unload all DMA maps in the TPA pool */
    for (i = 0; i < max_agg_queues; i++) {
        if (fp->rx_tpa_info[i].bd.m_map != NULL) {
            FUNC1(fp->rx_mbuf_tag,
                            fp->rx_tpa_info[i].bd.m_map,
                            BUS_DMASYNC_POSTREAD);
            FUNC2(fp->rx_mbuf_tag,
                              fp->rx_tpa_info[i].bd.m_map);
        }

        if (fp->rx_tpa_info[i].bd.m != NULL) {
            FUNC3(fp->rx_tpa_info[i].bd.m);
            fp->rx_tpa_info[i].bd.m = NULL;
            fp->eth_q_stats.mbuf_alloc_tpa--;
        }
    }
}