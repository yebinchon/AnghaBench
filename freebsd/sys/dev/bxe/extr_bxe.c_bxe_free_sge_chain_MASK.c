#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bxe_softc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mbuf_alloc_sge; } ;
struct bxe_fastpath {TYPE_2__ eth_q_stats; TYPE_1__* rx_sge_mbuf_chain; int /*<<< orphan*/ * rx_sge_mbuf_tag; struct bxe_softc* sc; } ;
struct TYPE_3__ {int /*<<< orphan*/ * m; int /*<<< orphan*/ * m_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int RX_SGE_TOTAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct bxe_fastpath *fp)
{
    struct bxe_softc *sc;
    int i;

    sc = fp->sc;

    if (fp->rx_sge_mbuf_tag == NULL) {
        return;
    }

    /* rree all mbufs and unload all maps */
    for (i = 0; i < RX_SGE_TOTAL; i++) {
        if (fp->rx_sge_mbuf_chain[i].m_map != NULL) {
            FUNC0(fp->rx_sge_mbuf_tag,
                            fp->rx_sge_mbuf_chain[i].m_map,
                            BUS_DMASYNC_POSTREAD);
            FUNC1(fp->rx_sge_mbuf_tag,
                              fp->rx_sge_mbuf_chain[i].m_map);
        }

        if (fp->rx_sge_mbuf_chain[i].m != NULL) {
            FUNC2(fp->rx_sge_mbuf_chain[i].m);
            fp->rx_sge_mbuf_chain[i].m = NULL;
            fp->eth_q_stats.mbuf_alloc_sge--;
        }
    }
}