
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_5__ {int tx_mtx; int * tx_br; } ;
typedef TYPE_1__ qla_tx_fp_t ;
struct TYPE_6__ {struct ifnet* ifp; } ;
typedef TYPE_2__ qla_host_t ;


 int M_DEVBUF ;
 int buf_ring_free (int *,int ) ;
 struct mbuf* drbr_dequeue (struct ifnet*,int *) ;
 int m_freem (struct mbuf*) ;
 int mtx_destroy (int *) ;
 scalar_t__ mtx_initialized (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
qla_free_tx_br(qla_host_t *ha, qla_tx_fp_t *fp)
{
        struct mbuf *mp;
        struct ifnet *ifp = ha->ifp;

        if (mtx_initialized(&fp->tx_mtx)) {

                if (fp->tx_br != ((void*)0)) {

                        mtx_lock(&fp->tx_mtx);

                        while ((mp = drbr_dequeue(ifp, fp->tx_br)) != ((void*)0)) {
                                m_freem(mp);
                        }

                        mtx_unlock(&fp->tx_mtx);

                        buf_ring_free(fp->tx_br, M_DEVBUF);
                        fp->tx_br = ((void*)0);
                }
                mtx_destroy(&fp->tx_mtx);
        }
        return;
}
