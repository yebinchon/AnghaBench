
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_iw_listener {scalar_t__ ecore_handle; } ;
struct qlnxr_dev {int rdma_ctx; int * ha; } ;
struct iw_cm_id {int (* rem_ref ) (struct iw_cm_id*) ;int device; struct qlnxr_iw_listener* provider_data; } ;
typedef int qlnx_host_t ;


 int QL_DPRINT12 (int *,char*,...) ;
 int ecore_iwarp_destroy_listen (int ,scalar_t__) ;
 struct qlnxr_dev* get_qlnxr_dev (int ) ;
 int stub1 (struct iw_cm_id*) ;

void
qlnxr_iw_destroy_listen(struct iw_cm_id *cm_id)
{
 struct qlnxr_iw_listener *listener = cm_id->provider_data;
 struct qlnxr_dev *dev = get_qlnxr_dev((cm_id->device));
 int rc = 0;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 if (listener->ecore_handle)
  rc = ecore_iwarp_destroy_listen(dev->rdma_ctx,
    listener->ecore_handle);

 cm_id->rem_ref(cm_id);

 QL_DPRINT12(ha, "exit [%d]\n", rc);
 return;
}
