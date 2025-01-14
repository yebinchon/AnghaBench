
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qlnxr_qp {int ecore_qp; struct qlnxr_iw_ep* ep; } ;
struct qlnxr_iw_ep {struct qlnxr_qp* qp; int ecore_context; struct iw_cm_id* cm_id; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int rdma_ctx; int qpidr; TYPE_2__* ha; } ;
struct iw_cm_id {int (* rem_ref ) (struct iw_cm_id*) ;int (* add_ref ) (struct iw_cm_id*) ;scalar_t__ provider_data; } ;
struct iw_cm_conn_param {int qpn; int ord; int ird; int private_data_len; int private_data; } ;
struct ecore_iwarp_accept_in {int ord; int ird; int private_data_len; int private_data; int qp; struct qlnxr_iw_ep* cb_context; int ep_context; } ;
struct TYPE_6__ {TYPE_1__* ifp; } ;
typedef TYPE_2__ qlnx_host_t ;
struct TYPE_5__ {int if_drv_flags; } ;


 int EINVAL ;
 int IFF_DRV_RUNNING ;
 int QL_DPRINT11 (TYPE_2__*,char*,int) ;
 int QL_DPRINT12 (TYPE_2__*,char*,...) ;
 int ecore_iwarp_accept (int ,struct ecore_iwarp_accept_in*) ;
 struct qlnxr_qp* idr_find (int *,int) ;
 int stub1 (struct iw_cm_id*) ;
 int stub2 (struct iw_cm_id*) ;

int
qlnxr_iw_accept(struct iw_cm_id *cm_id,
 struct iw_cm_conn_param *conn_param)
{
 struct qlnxr_iw_ep *ep = (struct qlnxr_iw_ep *)cm_id->provider_data;
 struct qlnxr_dev *dev = ep->dev;
 struct qlnxr_qp *qp;
 struct ecore_iwarp_accept_in params;
 int rc;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter  qpid=%d\n", conn_param->qpn);

 if (!(ha->ifp->if_drv_flags & IFF_DRV_RUNNING))
  return -EINVAL;

 qp = idr_find(&dev->qpidr, conn_param->qpn);
 if (!qp) {
  QL_DPRINT11(ha, "idr_find failed invalid qpn = %d\n",
   conn_param->qpn);
  return -EINVAL;
 }
 ep->qp = qp;
 qp->ep = ep;
 cm_id->add_ref(cm_id);
 ep->cm_id = cm_id;

 params.ep_context = ep->ecore_context;
 params.cb_context = ep;
 params.qp = ep->qp->ecore_qp;
 params.private_data = conn_param->private_data;
 params.private_data_len = conn_param->private_data_len;
 params.ird = conn_param->ird;
 params.ord = conn_param->ord;

 rc = ecore_iwarp_accept(dev->rdma_ctx, &params);
 if (rc) {
  QL_DPRINT11(ha, "ecore_iwarp_accept failed %d\n", rc);
  goto err;
 }

 QL_DPRINT12(ha, "exit\n");
 return 0;
err:
 cm_id->rem_ref(cm_id);
 QL_DPRINT12(ha, "exit rc = %d\n", rc);
 return rc;
}
