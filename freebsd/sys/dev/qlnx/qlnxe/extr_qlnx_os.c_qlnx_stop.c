
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct qlnx_fastpath {int fp_task; int * fp_taskqueue; int tx_mtx; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_7__ {scalar_t__ state; int num_rss; struct qlnx_fastpath* fp_array; int pci_dev; struct ifnet* ifp; } ;
typedef TYPE_1__ qlnx_host_t ;
typedef int device_t ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 scalar_t__ QLNX_STATE_OPEN ;
 int QL_DPRINT1 (TYPE_1__*,char*,scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int qlnx_rdma_dev_close (TYPE_1__*) ;
 int qlnx_unload (TYPE_1__*) ;
 scalar_t__ qlnx_vf_device (TYPE_1__*) ;
 int taskqueue_enqueue (int *,int *) ;

__attribute__((used)) static void
qlnx_stop(qlnx_host_t *ha)
{
 struct ifnet *ifp = ha->ifp;
 device_t dev;
 int i;

 dev = ha->pci_dev;

 ifp->if_drv_flags &= ~(IFF_DRV_OACTIVE | IFF_DRV_RUNNING);






        QL_DPRINT1(ha, "QLNX STATE = %d\n",ha->state);

 if (ha->state == QLNX_STATE_OPEN) {
         for (i = 0; i < ha->num_rss; i++) {
   struct qlnx_fastpath *fp = &ha->fp_array[i];

   mtx_lock(&fp->tx_mtx);
   mtx_unlock(&fp->tx_mtx);

   if (fp->fp_taskqueue != ((void*)0))
    taskqueue_enqueue(fp->fp_taskqueue,
     &fp->fp_task);
  }
 }






 qlnx_unload(ha);

 return;
}
