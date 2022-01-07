
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qlnx_fastpath {int tx_mtx; int tx_pkts_freed; scalar_t__ tx_br; } ;
struct mbuf {int dummy; } ;
struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_3__ {int num_rss; struct qlnx_fastpath* fp_array; } ;
typedef TYPE_1__ qlnx_host_t ;


 int QL_DPRINT2 (TYPE_1__*,char*) ;
 struct mbuf* drbr_dequeue (struct ifnet*,scalar_t__) ;
 int m_freem (struct mbuf*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
qlnx_qflush(struct ifnet *ifp)
{
 int rss_id;
 struct qlnx_fastpath *fp;
 struct mbuf *mp;
 qlnx_host_t *ha;

 ha = (qlnx_host_t *)ifp->if_softc;

 QL_DPRINT2(ha, "enter\n");

 for (rss_id = 0; rss_id < ha->num_rss; rss_id++) {

  fp = &ha->fp_array[rss_id];

  if (fp == ((void*)0))
   continue;

  if (fp->tx_br) {
   mtx_lock(&fp->tx_mtx);

   while ((mp = drbr_dequeue(ifp, fp->tx_br)) != ((void*)0)) {
    fp->tx_pkts_freed++;
    m_freem(mp);
   }
   mtx_unlock(&fp->tx_mtx);
  }
 }
 QL_DPRINT2(ha, "exit\n");

 return;
}
