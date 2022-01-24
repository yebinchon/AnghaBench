#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct qlnx_fastpath {int /*<<< orphan*/  fp_task; int /*<<< orphan*/ * fp_taskqueue; int /*<<< orphan*/ * tx_br; int /*<<< orphan*/  tx_mtx; scalar_t__ tx_pkts_completed; int /*<<< orphan*/  tx_pkts_compl_ctx; scalar_t__ tx_pkts_transmitted; int /*<<< orphan*/  tx_pkts_trans_ctx; } ;
struct TYPE_4__ {int flowid; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_5__ {int num_rss; struct qlnx_fastpath* fp_array; } ;
typedef  TYPE_2__ qlnx_host_t ;

/* Variables and functions */
 int ECORE_RSS_IND_TABLE_SIZE ; 
 int EINVAL ; 
 int M_FLOWID ; 
 scalar_t__ FUNC0 (struct mbuf*) ; 
 scalar_t__ M_HASHTYPE_NONE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,...) ; 
 int FUNC2 (struct ifnet*,int /*<<< orphan*/ *,struct mbuf*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ifnet*,struct qlnx_fastpath*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp, struct mbuf  *mp)
{
        qlnx_host_t		*ha = (qlnx_host_t *)ifp->if_softc;
        struct qlnx_fastpath	*fp;
        int			rss_id = 0, ret = 0;

#ifdef QLNX_TRACEPERF_DATA
        uint64_t tx_pkts = 0, tx_compl = 0;
#endif

        FUNC1(ha, "enter\n");

#if __FreeBSD_version >= 1100000
        if (M_HASHTYPE_GET(mp) != M_HASHTYPE_NONE)
#else
        if (mp->m_flags & M_FLOWID)
#endif
                rss_id = (mp->m_pkthdr.flowid % ECORE_RSS_IND_TABLE_SIZE) %
					ha->num_rss;

        fp = &ha->fp_array[rss_id];

        if (fp->tx_br == NULL) {
                ret = EINVAL;
                goto qlnx_transmit_exit;
        }

        if (FUNC3(&fp->tx_mtx)) {

#ifdef QLNX_TRACEPERF_DATA
                        tx_pkts = fp->tx_pkts_transmitted;
                        tx_compl = fp->tx_pkts_completed;
#endif

                        ret = FUNC5(ifp, fp, mp);

#ifdef QLNX_TRACEPERF_DATA
                        fp->tx_pkts_trans_ctx += (fp->tx_pkts_transmitted - tx_pkts);
                        fp->tx_pkts_compl_ctx += (fp->tx_pkts_completed - tx_compl);
#endif
                        FUNC4(&fp->tx_mtx);
        } else {
                if (mp != NULL && (fp->fp_taskqueue != NULL)) {
                        ret = FUNC2(ifp, fp->tx_br, mp);
                        FUNC6(fp->fp_taskqueue, &fp->fp_task);
                }
        }

qlnx_transmit_exit:

        FUNC1(ha, "exit ret = %d\n", ret);
        return ret;
}