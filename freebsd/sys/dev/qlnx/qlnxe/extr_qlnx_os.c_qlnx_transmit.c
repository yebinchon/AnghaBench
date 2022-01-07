
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct qlnx_fastpath {int fp_task; int * fp_taskqueue; int * tx_br; int tx_mtx; scalar_t__ tx_pkts_completed; int tx_pkts_compl_ctx; scalar_t__ tx_pkts_transmitted; int tx_pkts_trans_ctx; } ;
struct TYPE_4__ {int flowid; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_5__ {int num_rss; struct qlnx_fastpath* fp_array; } ;
typedef TYPE_2__ qlnx_host_t ;


 int ECORE_RSS_IND_TABLE_SIZE ;
 int EINVAL ;
 int M_FLOWID ;
 scalar_t__ M_HASHTYPE_GET (struct mbuf*) ;
 scalar_t__ M_HASHTYPE_NONE ;
 int QL_DPRINT2 (TYPE_2__*,char*,...) ;
 int drbr_enqueue (struct ifnet*,int *,struct mbuf*) ;
 scalar_t__ mtx_trylock (int *) ;
 int mtx_unlock (int *) ;
 int qlnx_transmit_locked (struct ifnet*,struct qlnx_fastpath*,struct mbuf*) ;
 int taskqueue_enqueue (int *,int *) ;

__attribute__((used)) static int
qlnx_transmit(struct ifnet *ifp, struct mbuf *mp)
{
        qlnx_host_t *ha = (qlnx_host_t *)ifp->if_softc;
        struct qlnx_fastpath *fp;
        int rss_id = 0, ret = 0;





        QL_DPRINT2(ha, "enter\n");




        if (mp->m_flags & M_FLOWID)

                rss_id = (mp->m_pkthdr.flowid % ECORE_RSS_IND_TABLE_SIZE) %
     ha->num_rss;

        fp = &ha->fp_array[rss_id];

        if (fp->tx_br == ((void*)0)) {
                ret = EINVAL;
                goto qlnx_transmit_exit;
        }

        if (mtx_trylock(&fp->tx_mtx)) {






                        ret = qlnx_transmit_locked(ifp, fp, mp);





                        mtx_unlock(&fp->tx_mtx);
        } else {
                if (mp != ((void*)0) && (fp->fp_taskqueue != ((void*)0))) {
                        ret = drbr_enqueue(ifp, fp->tx_br, mp);
                        taskqueue_enqueue(fp->fp_taskqueue, &fp->fp_task);
                }
        }

qlnx_transmit_exit:

        QL_DPRINT2(ha, "exit ret = %d\n", ret);
        return ret;
}
