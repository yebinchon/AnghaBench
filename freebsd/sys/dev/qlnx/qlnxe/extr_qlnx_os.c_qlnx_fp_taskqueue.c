
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qlnx_fastpath {int tx_mtx; scalar_t__ tx_pkts_completed; int tx_pkts_compl_fp; scalar_t__ tx_pkts_transmitted; int tx_pkts_trans_fp; int tx_br; scalar_t__ edev; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_3__ {struct ifnet* ifp; } ;
typedef TYPE_1__ qlnx_host_t ;


 int IFF_DRV_RUNNING ;
 int QL_DPRINT2 (TYPE_1__*,char*) ;
 int drbr_empty (struct ifnet*,int ) ;
 scalar_t__ mtx_trylock (int *) ;
 int mtx_unlock (int *) ;
 int qlnx_transmit_locked (struct ifnet*,struct qlnx_fastpath*,int *) ;
 scalar_t__ tx_compl ;
 scalar_t__ tx_pkts ;

__attribute__((used)) static void
qlnx_fp_taskqueue(void *context, int pending)
{
        struct qlnx_fastpath *fp;
        qlnx_host_t *ha;
        struct ifnet *ifp;

        fp = context;

        if (fp == ((void*)0))
                return;

 ha = (qlnx_host_t *)fp->edev;

 ifp = ha->ifp;

        if(ifp->if_drv_flags & IFF_DRV_RUNNING) {

                if (!drbr_empty(ifp, fp->tx_br)) {

                        if(mtx_trylock(&fp->tx_mtx)) {






                                qlnx_transmit_locked(ifp, fp, ((void*)0));







                                mtx_unlock(&fp->tx_mtx);
                        }
                }
        }

        QL_DPRINT2(ha, "exit \n");
        return;
}
